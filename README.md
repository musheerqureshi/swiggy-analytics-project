# 🍊 Swiggy Food Delivery Analytics Project

![Python](https://img.shields.io/badge/Python-3.12-blue?style=for-the-badge&logo=python)
![SQL Server](https://img.shields.io/badge/SQL%20Server-SSMS%2021-red?style=for-the-badge&logo=microsoftsqlserver)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-orange?style=for-the-badge&logo=powerbi)
![GitHub](https://img.shields.io/badge/GitHub-Repository-black?style=for-the-badge&logo=github)

---

## 📌 Project Overview

This is an **end-to-end Data Analytics project** inspired by real-world food delivery operations at **Swiggy**, one of India's leading food delivery platforms.

The project analyzes:
- **1,48,442 restaurant records** across 552+ Indian cities
- **4,44,382 delivery records** with rider-level performance data

The goal is to uncover **actionable business insights** around restaurant performance, customer ordering patterns, delivery operations, and city-level trends — and present them through an **interactive Power BI dashboard**.

---

## ❓ Business Problem

Food delivery companies like Swiggy face critical operational challenges:

- 📦 **Why are deliveries getting delayed?**
- 🏙️ **Which cities have the highest restaurant density and demand?**
- 🍛 **Which cuisines are most popular across India?**
- 🚴 **Which riders are most efficient?**
- ⏰ **When do customers order the most?**
- 💰 **Which cities have the highest average order cost?**

This project solves all of the above using **data-driven analysis**.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python 3.12** | Data cleaning, EDA, visualizations |
| **Pandas & NumPy** | Data manipulation |
| **Matplotlib & Seaborn** | Charts and visualizations |
| **SQL Server (SSMS 21)** | Data storage & business KPI queries |
| **SQLAlchemy + PyODBC** | Python to SQL Server connection |
| **Power BI Desktop** | Interactive 5-page dashboard |
| **VS Code** | Development environment |
| **GitHub** | Version control |

---

## 📁 Project Structure

```
swiggy-analytics-project/
│
├── 📂 notebooks/
│   └── analysis.ipynb          → Complete Python EDA notebook
│
├── 📂 SQL/
│   ├── 01_create_database.sql  → Database & table setup
│   ├── 02_top_cities.sql       → Top 10 cities by restaurants
│   ├── 03_avg_rating_by_city.sql → Average rating by city
│   ├── 04_popular_cuisines.sql → Most popular cuisines
│   ├── 05_avg_cost_by_city.sql → Average cost by city
│   ├── 06_delivery_stats.sql   → Overall delivery statistics
│   ├── 07_peak_hours.sql       → Peak order hours analysis
│   └── 08_top_riders.sql       → Top 10 most active riders
│
├── 📂 charts/
│   ├── chart1_top_cities.png
│   ├── chart2_rating_distribution.png
│   ├── chart3_top_cuisines.png
│   ├── chart4_avg_cost.png
│   ├── chart5_delivery_time.png
│   ├── chart6_peak_hours.png
│   ├── chart7_top_riders.png
│   └── chart8_time_vs_distance.png
│
├── 📂 dashboard-screenshots/
│   ├── kpi_overview.png
│   ├── top_cities.png
│   ├── top_cuisines.png
│   ├── delivery_analysis.png
│   └── restaurant_insights.png
│
└── README.md
```

---

## 📊 Dataset

| Dataset | Source | Records | Description |
|---------|--------|---------|-------------|
| Swiggy Restaurants | Kaggle | 1,48,442 | Restaurant names, cities, cuisines, ratings, cost |
| Rider Info | Kaggle | 4,44,382 | Order times, delivery times, rider IDs, distances |

### Download Links
- 🔗 [Swiggy Restaurants Dataset](https://www.kaggle.com/datasets/ashishjangra27/swiggy-restaurants-dataset)
- 🔗 [Rider Info Dataset](https://www.kaggle.com/datasets/cbhavik/swiggyzomato-order-information)

---

## 🔄 Project Workflow

```
Raw Data (CSV)
     ↓
Data Cleaning (Python)
     ↓
Exploratory Data Analysis (Python + Seaborn)
     ↓
Load to SQL Server (SQLAlchemy)
     ↓
Business KPI Queries (SQL)
     ↓
Interactive Dashboard (Power BI)
     ↓
Business Recommendations
```

---

## 🧹 Data Cleaning Steps

### Restaurant Dataset
- Removed `lic_no` column (irrelevant)
- Cleaned `cost` column — removed `₹` symbol, converted to numeric
- Cleaned `city` column — extracted main city name from "BTM,Bangalore" → "Bangalore"
- Handled missing values in rating, cost, cuisine columns
- Removed duplicate records

### Rider Dataset
- Converted `order_time` and `delivered_time` to datetime format
- Calculated `delivery_duration_min` = delivered_time - order_time
- Removed unrealistic delivery times (< 0 min and > 180 min)
- Removed 1 duplicate record

---

## 📈 EDA — Key Charts

| Chart | Insight |
|-------|---------|
| Top 10 Cities by Restaurants | Bangalore leads with 14,943 restaurants |
| Rating Distribution | Most restaurants rated between 3.5 - 4.5 |
| Top 10 Cuisines | North Indian + Chinese most popular |
| Avg Cost by City | Premium pricing in select tier-2 cities |
| Delivery Time Distribution | Peak at 25-30 min, avg 31.63 min |
| Peak Order Hours | Highest orders at 2 PM (69,500 orders) |
| Top Active Riders | Rider #237 leads with 227 orders |
| Delivery Time vs Distance | Delivery time increases beyond 4km |

---

## 🗄️ SQL Analysis — Business Queries

| Query | Result |
|-------|--------|
| Top city by restaurants | Bangalore — 14,943 |
| Highest rated city | Chopda — 4.83 avg rating |
| Most popular cuisine | North Indian + Chinese — 6,471 restaurants |
| Most expensive city | Hinganghat — ₹18,962 avg cost |
| Average delivery time | 31.63 minutes |
| Peak order hour | 2 PM — 69,500 orders |
| Most active rider | Rider #237 — 227 orders, 24.28 min avg |
| Total orders analyzed | 4,44,382 |

---

## 📊 Power BI Dashboard — 5 Pages

### Page 1 — KPI Overview
- Total Restaurants: **1,48,442**
- Total Orders: **4,44,382**
- Avg Delivery Time: **31.63 min**
- Avg Restaurant Rating: **3.89**

### Page 2 — Top Cities Bar Chart
- Top 10 cities by number of restaurants
- Bangalore, Delhi, Pune lead the chart

### Page 3 — Top Cuisines Bar Chart
- Top cuisines across India
- North Indian + Chinese dominates

### Page 4 — Delivery Analysis
- Peak order hours line chart
- Avg delivery time card
- Top 10 riders bar chart

### Page 5 — Restaurant Insights
- Avg rating by city
- Avg cost by city
- Total cities covered: **552**

---

## 💡 Business Recommendations

1. **🚴 Deploy maximum riders between 2 PM - 5 PM**
   Peak order window with 69,500+ orders — rider shortage causes delays

2. **🏙️ Focus restaurant partnerships in Bangalore & Delhi**
   Highest restaurant density and customer demand

3. **🍛 Promote North Indian & Chinese cuisine restaurants**
   Most popular category — drives maximum orders

4. **📍 Improve delivery efficiency beyond 4km radius**
   Delivery time increases significantly after 4km — hyperlocal focus needed

5. **⭐ Target Chopda, Kumta & Kadayanallur for premium segment**
   Highest rated cities — untapped premium market

6. **💰 Review pricing strategy in Hinganghat**
   Average cost ₹18,962 — outlier needs investigation

---

## 🚀 How to Run This Project

### Step 1 — Clone Repository
```bash
git clone https://github.com/musheerqureshi/swiggy-analytics-project.git
cd swiggy-analytics-project
```

### Step 2 — Install Python Libraries
```bash
pip install pandas numpy matplotlib seaborn sqlalchemy pyodbc
```

### Step 3 — Download Dataset
Download both datasets from Kaggle links above and place in `Data/` folder

### Step 4 — Run Python Notebook
Open `notebooks/analysis.ipynb` in VS Code or Jupyter

### Step 5 — Setup SQL Server
Run `SQL/01_create_database.sql` in SSMS first, then run remaining SQL files

### Step 6 — Open Power BI Dashboard
Download `.pbix` file from Google Drive link (see below) and open in Power BI Desktop

---

## 👤 Author

**Musheer Alam**
Data Analyst | Python • SQL • Power BI

📧 musheeralam794@gmail.com
🔗 [LinkedIn Profile](https://linkedin.com/in/your-profile)
🐙 [GitHub](https://github.com/musheerqureshi)

---

## ⭐ If you found this project helpful, please give it a star!
