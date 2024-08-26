View(complaints)
head(complaints)

# Load necessary library
library(tidyverse)

#Read data
complaints_data <- read.csv("complaints")

#Basic summary statistics
summary(complaints)

# Visualize complaint volume over time (assuming 'date_receive' is in date format)
ggplot(complaints, aes(x= Date.received)) +
  geom_bar() + 
  labs(title = "Complaints Volume Over Time")

#Explore top complaint types
top_complaints <- complaints %>%
  count(Product) %>%
  top_n(5)

ggplot(top_complaints, aes(x= reorder(Product,n),y = n)) +
  geom_col() +
  coord_flip() +
  labs(title = "Top 5 Complaint Types", x = "Product", y = "Number of Complaints")
scale_fill_brewer(palette = "Set3") +  # Apply a color palette
  theme(legend.position = "none") 