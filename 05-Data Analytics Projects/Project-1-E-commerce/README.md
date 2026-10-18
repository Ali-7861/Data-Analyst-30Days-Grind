# Day-01/Project-01-E-Commerce_sales
### Dynamic Sales Performance Optimization (E-Commerce)

## 📌 Project Overview
This project focuses on analyzing an e-commerce retail dataset containing ~10,000 transactions across 21 detailed business columns. The primary objective is to optimize regional sales performance by identifying low-margin product categories, high-return zones, and key customer segments across geographical regions.

## 📊 Dataset Structure
The dataset consists of 9,995 rows and **21 columns**, capturing end-to-end transaction paths:
*   **Order Metadata:** Row ID, Order ID, Order Date, Ship Date, Ship Mode
*   **Customer Demographics:** Customer ID, Customer Name, Segment
*   **Geographic Dimensions:** Country, City, State, Postal Code, Region
*   **Product Details:** Product ID, Category, Sub-Category, Product Name
*   **Financial Performance Metrics:** Sales, Quantity, Discount, Profit

## 🛠️ Data Pipeline Architecture

### Phase 1: Data Cleaning & Integrity (Excel)
*   **Text Standardization:** Applied `=PROPER(TRIM())` to categorical fields (`Customer Name`, `Segment`, `City`, `State`) to remove trailing whitespace strings and fix irregular case errors.
*   **Data Type Integrity:** Transformed geographic zip codes into strict text attributes to preserve leading structural zeros. Checked currency vectors (`Sales`, `Profit`) for embedded non-numeric text symbols.
*   **Temporal Standardization:** Unified mixed raw date inputs (`DD-MM-YYYY` vs. `DD/MM/YYYY`) into a single, standardized format to support downstream time-series analysis.

### Phase 2: Relational Queries & Exploratory Analysis (SQL)
*   *Upcoming status: Writing complex window functions, aggregations, and ranking scripts to break down performance across Indian regions.*

### Phase 3: Interactive Visualizations (Power BI)
*   *Upcoming status: Developing a functional executive dashboard to track MoM growth metrics, active revenue health, and structural distribution gaps.*
*
