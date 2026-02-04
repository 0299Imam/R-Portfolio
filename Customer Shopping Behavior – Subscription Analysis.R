#1) Load & cek data

library(tidyverse)
library(janitor)

df <- read.csv("C:/Users/imam0/Downloads/Compressed/archive_4/shopping_behavior_updated (1).csv") %>%
  clean_names()

glimpse(df)
skimr::skim(df)

#2) EDA yang relevan untuk target subscription
library(tidyverse)

# proporsi subscription
df %>%
  count(subscription_status) %>%
  mutate(pct = n / sum(n))

# subscription vs frequency
df %>%
  count(subscription_status, frequency_of_purchases) %>%
  group_by(subscription_status) %>%
  mutate(pct = n / sum(n)) %>%
  arrange(subscription_status, desc(pct))


#distribusi purchase amount per subscription
ggplot(df, aes(x = subscription_status, y= purchase_amount_usd + geom_boxplot()))

# previous purchases vs subscription
ggplot(df, aes(x = previous_purchases, fill = subscription_status)) +
  geom_histogram(bins = 30, position = "identity", alpha = 0.5)


# 3) Feature prep
library(tidymodels)

df2 <- df %>%
  mutate(subscription_status = factor(subscription_status, levels = c("No","Yes"))) %>%
  select(-customer_id)

set.seed(42)
split <- initial_split(df2, prop = 0.8, strata = subscription_status)
train <- training(split)
test  <- testing(split)

rec <- recipe(subscription_status ~ ., data = train) %>%
  step_nzv(all_predictors()) %>%
  step_impute_median(all_numeric_predictors()) %>%
  step_impute_mode(all_nominal_predictors()) %>%
  step_dummy(all_nominal_predictors())

rec


#4) Model baseline + evaluasi

library(tidymodels)

log_spec <- logistic_reg() %>%
  set_engine("glm")

wf <- workflow() %>%
  add_recipe(rec) %>%
  add_model(log_spec)

fit <- wf %>% fit(data = train)

pred <- bind_cols(
  predict(fit, test, type = "prob"),
  predict(fit, test, type = "class"),
  test %>% select(subscription_status)
)

glimpse(pred)

# metrics
roc_auc(pred, truth = subscription_status, .pred_Yes)
accuracy(pred, truth = subscription_status, .pred_class)
conf_mat(pred, truth = subscription_status, estimate = .pred_class)

