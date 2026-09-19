# 02- Microsoft Excel - 30 Days Grind 
## Day 01 - Data Sanitization - Phase 1 BASICS
Dataset: Random messy dataset from Google (Practice purpose)

Steps Done:
- Used Text to Columns (Comma delimiter) to split Lead_ID, Name, Region, Spend
- Applied TRIM to remove extra spaces in Name & Region
- Removed duplicate entries (L001, L002)


## Day 02 - Excel Data Cleaning

**Problem:**
The raw CSV was dumped in a single column with inconsistent date formats, random vendor name casing, and extra spaces.

**What I Fixed:**
1.  **Parsing:** Used Text to Columns (Comma) to split 1 column into 5 structured columns.
2.  **Dates:** Standardized 4 different formats into DD-MM-YYYY using DATEVALUE and Find & Replace.
3.  **Vendors:** Cleaned names using TRIM and PROPER - e.g., pAnKaJ -> Pankaj.
4.  **Status & Amount:** Fixed status with UPPER and converted amount to number format.

**Files Included:**
- `Day_02_Before.png` - Raw messy data
- `Day_02_After.png` - Final clean table
- `Day_02_Workbook.xlsx` - Excel file with formulas

**Functions Used:** Text to Columns, TRIM, PROPER, UPPER, DATEVALUE
