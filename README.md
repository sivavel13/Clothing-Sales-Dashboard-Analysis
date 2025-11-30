# 👕 Clothing Store Data Analytics Dashboard

## Table of Contents
  - [Project Overview](#project-overview)
  - [Business Introduction](#business-introduction)
  - [Tools and Technologies](#tools-and-technologies)
  - [Business Problem](#business-problem)
  - [Aim of this Analysis](#aim-of-this-analysis)
  - [Processes of Analysis](#processes-of-analysis)
  - [Key Insights from the Sales Analysis](#key-insights-from-the-sales-analysis)
  - [Conclusion](#conclusion)

### Project Overview
This project involves the analysis of a simulated retail **Clothing Sales Dataset** to identify key performance indicators (KPIs), sales trends, and top-performing products/stores. The goal was to transform raw transaction data into actionable business intelligence using **Tableau Public** for visualization.

This dashboard provides stakeholders with a clear, interactive view of the store's performance throughout 2023.


A static view of the final Tableau Public dashboard:

<img width="1407" height="792" alt="SivaramVel" src="https://github.com/user-attachments/assets/5591bc0e-b028-4714-97ae-2cd2f50a0b86" />

Here Dashboard link from Tableau Public : https://public.tableau.com/app/profile/sivaraman.v1068/viz/ClothsStoreDataAnalyticsDashboard/Dashboard2?publish=yes


---

### Business Introduction
In today’s highly competitive retail landscape, fashion and apparel brands face increasing pressure to understand customer preferences, optimize product mix, and maintain consistent revenue growth across multiple sales channels. A lack of visibility into real-time sales performance, customer behavior, product profitability, and regional demand can lead to poor inventory decisions, missed revenue opportunities, and declining customer satisfaction.

This project focuses on a Clothing Retail Store that operates both online and offline across multiple cities in Tamil Nadu. The business records every transaction with detailed information about product category, quantity sold, pricing, customer location, sales channel, date, and salesperson.

### Tools and Technologies

This project leveraged the following tools:

* **Data Source :** CSV File (10K rows)
* **Visualization & BI :** **Tableau Public**
* **Data Cleaning/Preparation :** Python, Pandas, Matplot, Seaborn

### Business Problem 
The retail store needs a unified, data-driven analytics system to understand sales performance, identify growth opportunities, optimize inventory, improve customer experience, and support strategic decision-making across all retail channels. 
1. Lack of Visibility Into Revenue Patterns
2. Inefficient Product & Inventory Decisions
3. Unclear Location & Customer Performance
4. Poor Channel Performance Tracking
5. No Measurement of Operational Bottlenecks

### Aim of this Analysis
The primary aim of this analysis is to transform raw sales data into actionable insights that help the business improve revenue, optimize inventory, and enhance customer experience. By analyzing product performance, sales trends, customer behavior, and channel efficiency, this analysis aims to:

1. Identify revenue patterns

    - Understand which months, days, and seasons drive the highest sales

    - Compare yearly trends for accurate forecasting

2. Evaluate product performance

    - Determine top-selling product categories, colors, and sizes

    - Identify low-performing items to improve inventory planning

3. Analyze customer and location trends

    - Assess which cities or regions generate the most revenue

    - Understand customer buying patterns to support targeted marketing

4. Measure channel efficiency

    - Compare in-store, online, and app sales

    - Identify the best-performing channels

5. Detect operational bottlenecks

    - Analyze cancellations, returns, and refunded orders

    - Improve operational workflow to reduce losses

### Processes of Analysis
*To convert raw sales data into meaningful business insights, the following structured process was followed:*

**1️. Data Collection**
  - Gathered raw sales data from company records (CSV files / database exports).
  - Ensured completeness of fields such as date, product details, customer location, and order information.

**2️. Data Cleaning & Pre-processing**

  - Removed duplicates and null values
  - Standardized column names and data types
  - Converted date fields into Year, Month, DayOfWeek
  - Corrected inconsistent product names, categories, and formatting
  - Handled missing or invalid entries to ensure reliable analysis

**3. Feature Engineering**
  - Created new meaningful columns like:
    - Sale Year
    - Sale Month
    - Day of Week
    - Revenue per Order
    - Total Quantity Sold

  - Enhanced dataset for better trend analysis and reporting.

**4. Exploratory Data Analysis (EDA)**
  - Performed descriptive statistics
  - Identified correlations between product attributes & sales
  - Detected patterns in:
  - Monthly revenue
  - Daily revenue
  - Channel-wise performance
  - Product category behavior

**5. Data Visualization (Python + Tableau)**
  - Built visually compelling charts using Pandas, Seaborn, Matplotlib, and Tableau:
  - Heatmaps
  - Line charts
  - Bar charts
  - Pie/donut charts
  - Trend analysis visuals
    
**6. Dashboard Creation**
  - Created an interactive, user-friendly dashboard in Tableau Public.
  - Included filters for period, product category, location, etc.
  - Designed to support quick decision-making with high-level KPIs.

**7. Insight Generation**
  - Interpreted visual data into clear business insights.
  - Identified top-performing products, cities, channels, and seasons.
  - Highlighted bottlenecks such as cancellations or low-selling SKUs.

### Key Insights from the Sales Analysis

Based on the cleaned dataset, visualizations, and Tableau dashboard, the following high-impact insights were observed:

**1. Monthly Revenue Trends**
  - Revenue shows strong performance in  ***January, December and October*** indicating seasonal demand peaks.
  - A noticeable dip occurs in Augest–September, suggesting an opportunity to run promotions or campaigns during these slow months.
    
    **Note : High sale in Diwali, Pongal, Christmas and New Year festivals.**

**2. Day of week Performance**
  - overall revenue is fairly stable, but Friday stands out as the strongest day, while Saturday is the weakest.
  - You earn roughly **₹4.24M on Fridays** versus around ₹3.66–3.90M on other days, so targeting promotions, new launches, or ads on Fridays could maximize returns, and we should investigate why Saturdays underperform.
    
**3. Top Product Categories**
  - These are your top 10 products by volume; **Jeans_090** is a clear hero product, selling roughly 40–50% more units than the next items.
  - Most of your top sellers are core apparel categories (jeans, men’s wear, kurtas, t‑shirts, kidswear, sarees, sportswear), so ensuring enough inventory, prominent placement, and targeted promotions on these will directly impact total sales.

**4. City-Level Insights**
  - All locations are performing in a narrow band, with Erode leading but only by about ₹250K over the lowest city; there is no extreme underperformer.
  - Since differences are small, growth can come from local optimization: targeted campaigns in mid‑tier cities like Salem/Chennai, and understanding what Erode is doing right (product mix, pricing, promotions) to replicate that playbook elsewhere

**5. Order Platform Performance**
  - Offline sales / Walk-in customers dominate, but online channels show consistent growth patterns.
  - Online orders also showcase higher cancellation rates—an area that needs operational improvements.

**6. Cancellation & Return Patterns**

  - Cancellation rates spike in certain months, often correlating with:
    - Out-of-stock products
    - Delivery delays
    - Customer order modifications
  - Reducing cancellations could improve annual revenue significantly.

**7. Revenue Contribution by Product Attributes**
  - Colors, sizes, or categories show clear preferences (e.g., Black, M size, or Cotton category perform better).
  - Understanding these attributes helps optimize inventory and reduce overstock.

**8. Customer Purchase Behavior**
  - High repeat purchasing indicates strong loyalty for certain products.
  - Price-sensitive segments appear more active during festive seasons and discount windows.

### Conclusion

  - This sales analysis project provides a clear understanding of how product performance, customer behavior, seasons, and sales channels influence overall business revenue. By exploring trends across months, weekdays, product categories, and city-wise demand, the analysis highlights key growth opportunities as well as operational challenges such as cancellations and returns.

  - The insights gained from this dataset can help businesses make data-driven decisions in areas like inventory planning, pricing strategy, promotional timing, and customer targeting. With the support of visual dashboards and well-structured analysis, this project demonstrates how raw transactional data can be transformed into meaningful business intelligence


