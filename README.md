# R-Portfolio

## 1. Banking Consumer Complaint Analysis

This R project provides an exploratory analysis of banking consumer complaints, aiming to identify trends, top complaint types, and potentially uncover insights into customer concerns within the banking sector.

## Data Source

The analysis is based on a dataset containing consumer complaints related to various banking products and services. The specific source of the data is not explicitly mentioned in the code, but it's assumed to be a CSV file named "complaints.csv." Here's the [data source](https://www.consumerfinance.gov/data-research/consumer-complaints/#download-the-data) 


## Code Overview

The R code performs the following tasks:

1. **Data Loading and Inspection:**
   * Loads the `tidyverse` library for data manipulation and visualization.
   * Reads the "complaints.csv" file into a dataframe called `complaints_data`.
   * Provides basic summary statistics of the `complaints` dataframe using `summary()`. 

2. **Complaint Volume Trend:**
   * Generates a bar chart visualizing the volume of complaints over time, assuming the `Date.received` column is already in a date format.

3. **Top Complaint Types:**
   * Identifies the top 5 most frequent complaint types based on the `Product` column.
   * Creates a horizontal bar chart displaying these top complaint types and their counts, using a color palette from `RColorBrewer` for visual distinction.

## How to Run the Code

1. **Prerequisites:**
   * Ensure you have R and RStudio installed on your system.
   * Install the required libraries:
     ```R
     install.packages("tidyverse")
     ```

2. **Data:**
   * Place the "complaints.csv" file in the same directory as your R script.

3. **Execution:**
   * Open the R script in RStudio.
   * Run the code. The visualizations will be displayed in the RStudio Plots pane.

## Potential Enhancements

* **Data Preprocessing:** Explore and address any missing values or inconsistencies in the data before analysis.
* **Deeper Analysis:** 
    * Consider incorporating sentiment analysis or topic modeling on complaint narratives (if available) to uncover deeper insights into customer concerns.
    * Apply machine learning techniques to predict complaint outcomes or identify factors influencing customer satisfaction.
* **Interactive Visualizations:** Utilize packages like `plotly` or `shiny` to create interactive charts and dashboards for a more engaging exploration of the data.

## Disclaimer

This analysis is for illustrative purposes. The conclusions drawn from the analysis might vary depending on the specific dataset used. Always ensure the data is representative and the analysis is conducted with appropriate statistical rigor.

## 2. E-commerce Sales Data Analysis: Uncovering Insights and Customer Trends

This R project provides an exploratory analysis of e-commerce sales data, focusing on uncovering insights related to sales performance, product trends, and customer behavior.

## Data Source
The analysis is based on a dataset containing sales transactions from an e-commerce platform, with data on purchase dates, locations, product categories, and sales figures. The specific data file used in the analysis is assumed to be a CSV file named "ecommerce.csv. "Here's the [data source](https://www.kaggle.com/datasets/shrishtimanja/ecommerce-dataset-for-data-analysis)

## Code Overview

The R code performs the following tasks:

1. **Data Loading and Inspection:**

* Loads essential libraries, including dplyr for data manipulation and ggplot2 for data visualization.
* Reads the "ecommerce.csv" file into a dataframe called data.
* Provides a basic summary of the data using functions like summary() to understand its structure and key statistics.
  
**Sales Performance Analysis:**

* Calculates descriptive statistics, such as the average order value, total gross sales, and total net sales.
* Computes the sales ratio (net sales divided by gross sales) to assess sales efficiency.

**Top Product Categories:**

* Generates a bar chart to visualize the number of orders by product category, helping to identify which categories generate the most sales.

**Customer Segmentation:**

* Groups customers by their Customer ID (CID) and calculates the total net sales per customer.
* Identifies the top 10 customers by their net sales and visualizes them using a bar chart to highlight the most valuable customers.

**How to Run the Code**
**Prerequisites:**

* Ensure you have R and RStudio installed on your system.
* Install the necessary libraries:
  ```
  install.packages("dplyr")
  install.packages("ggplot2") 

**Data:**

Place the "ecommerce.csv" file in the same directory as your R script.

**Execution:**

* Open the R script in RStudio.
* Run the code, and the visualizations will be displayed in the RStudio Plots pane.

## Potential Enhancements

* **Data Preprocessing:** Further exploration of missing data or inconsistencies in the dataset before analysis.
* **Deeper Customer Insights:** Apply clustering techniques to segment customers based on purchasing behavior.
* **Predictive Analysis:** Use machine learning models to predict future sales trends or identify factors influencing customer loyalty.
* **Interactive Visualizations:** Leverage packages like shiny or plotly to create interactive charts and dashboards for deeper engagement.

## Disclaimer

This analysis is for illustrative purposes. The conclusions drawn from the analysis may vary depending on the specific dataset used. Always ensure the data is representative and the analysis is conducted with appropriate statistical rigor.
