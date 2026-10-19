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

# Day-02/Project-01-E-Commerce_sales_Optimization
# Dynamic Sales Performance Optimization (E-Commerce)

## 📌 Project Overview
This project focuses on analyzing an e-commerce retail dataset containing 9,993 transactions across 21 detailed business columns. The primary objective is to optimize regional sales performance by identifying low-margin product categories, high-return zones, and key customer segments across geographical regions.

## 📊 Dataset Structure & Scale
*   **Total Volume:** 9,993 rows | 21 columns
*   **Order Metadata:** Row ID, Order ID, Order Date, Ship Date, Ship Mode
*   **Customer Demographics:** Customer ID, Customer Name, Segment
*   **Geographic Dimensions:** Country, City, State, Postal Code (formatted as Text), Region
*   **Product Details:** Product ID, Category, Sub-Category, Product Name
*   **Financial Metrics:** Sales, Quantity, Discount, Profit

## 🛠️ Data Pipeline Architecture

### ✅ Phase 1: Manual Data Cleaning & Integrity (Excel) - COMPLETED
To ensure 100% data integrity before database ingestion, a comprehensive manual audit was performed on all 9,993 rows:
*   **Text Standardization:** Applied `=PROPER(TRIM())` to categorical fields (`Customer Name`, `Segment`, `City`, `State`, `Product Name`) to remove hidden leading/trailing whitespaces and eliminate case-sensitivity anomalies that break dashboard filters.
*   **Anomalies & Glitches Resolved:** Detected and successfully eliminated all hidden structural `(Blanks)` within the **Region (Column M)** by cross-referencing geographic variables (City/State), achieving **zero blank cells** across the entire matrix.
*   **Data Type Enforcement:** Converted **Postal Code (Column K)** from a numerical scale to a strict **Text** format via the *Format Cells* wizard to preserve essential leading zeros.
*   **Mathematical Safety:** Audited financial column vectors (`Sales`, `Profit`, `Quantity`) to ensure zero text strings (`"null"`, `"N/A"`, `"-"`) were present, confirming the dataset is ready for mathematical aggregations.

### ⏳ Phase 2: Relational Queries & Exploratory Analysis (MySQL Workbench) - IN PROGRESS
*   *Current status:* Establishing schema definitions and preparing to ingest the clean tabular records into a relational database engine. Upcoming operations include complex window functions (`DENSE_RANK()`), regional margin calculations, and CTEs.

### ⏳ Phase 3: Interactive Visualizations (Power BI) - UPCOMING
*   *Upcoming status:* Developing a functional business intelligence dashboard tracking MoM growth rates, regional target spreads, and categorical performance matrixes.
*
