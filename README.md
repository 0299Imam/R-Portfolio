# R-Portfolio

## Banking Consumer Complaint Analysis

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

## Author

Imam Santoso
