library(dplyr)
library(ggplot2)

# 1. Load the Dataset
# Load the dataset
data <- read.csv("C:/Users/imam0/Downloads/archive (4)/ecommerce.csv")

# View the first fw rows of the dataset
head(data)


#2. Examine the Structure of the Data
# Structure of the dataset
str(data)

# Summary statistics
summary(data)

#3.Handle Missing Data (if any)

# Check for missing values
sum(is.na(data))


#4. Basic Descriptive Statistics

# Select specific columns (assuming 'Purchase Date', 'Location', and 'Net Amount' exist)
multi <- data %>%
  select(Purchase.Date, Location, Net.Amount)


# View the first few rows of the modified data frame
head(multi)

# Average order value
average_order_value <- mean(data$Net.Amount, na.rm = TRUE)

# Print the result
print(average_order_value)

# Calculate total gross sales and total net sales
total_gross_sales <- sum(data$Gross.Amount, na.rm = TRUE)
total_net_sales <- sum(data$Net.Amount, na.rm = TRUE)

#Calculate sales ratio
sales_ratio <- (total_net_sales/total_gross_sales)*100

# Print tthe result
print(paste("Sales Ratio(%)", round(sales_ratio, 2)))

# 5. Create Basic Visualizations
# Bar plot of orders by category
 ggplot(data, aes(x=Product.Category)) + 
   geom_bar(fill="blue", color="black") +
   labs(title = "Number of Orders by Category", x="Product.Category", y="Count")
 
 
# 6. Analyze Customer Trends
 # Group by Customer ID (CID) and summarize total net sales
 customer_sales <- data %>%
   group_by(CID) %>%
   summarize(TotalSales = sum(Net.Amount, na.rm = TRUE))  # Summing up Net Amount per customer
 
 # Get the top 10 customers by TotalSales
 top_customers <- customer_sales %>%
   top_n(10, TotalSales)
 
 # Visualize the top 10 customers by TotalSales
 ggplot(top_customers, aes(x = reorder(CID, -TotalSales), y = TotalSales)) +
   geom_bar(stat = "identity", fill = "green") +
   labs(title = "Top 10 Customers by Net Sales", x = "Customer ID", y = "Total Sales (Net Amount)") +
   theme_minimal()
 