# 🇧🇷 Brazil E-commerce Analytics using SQL

## Project Overview

This project analyzes the Brazilian E-commerce Public Dataset (Olist) using **Google BigQuery** and **SQL** to explore customer purchasing behavior, sales trends, logistics performance, freight costs, delivery efficiency, and payment preferences.

The objective was to transform raw transactional data into meaningful business insights that can support operational improvements and strategic decision-making.

---

# Business Problem

An e-commerce company wants to better understand its operations by answering questions such as:

- How are sales changing over time?
- Which regions generate the highest revenue?
- How efficient is the delivery network?
- How do freight costs vary across states?
- Which payment methods do customers prefer?

The analysis aims to identify trends, operational bottlenecks, and opportunities for business growth.

---

# Dataset

This project uses the **Brazilian E-commerce Public Dataset (Olist)**.

The dataset contains e-commerce transactions between **2016 and 2018**, including information on:

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews
- Geolocation

For additional information, refer to:

📁 `datasets/README.md`

---

# Project Approach

The project followed a structured analytical workflow:

### Data Exploration

- Explored dataset structure
- Verified data types
- Identified customer coverage across cities and states
- Determined the overall order time period

### Sales Analysis

- Analyzed yearly order growth
- Evaluated monthly sales trends
- Identified customer purchasing patterns throughout the day

### Customer & Regional Analysis

- Measured customer distribution across Brazilian states
- Compared order volumes between regions
- Identified high-performing and low-performing markets

### Revenue & Freight Analysis

- Compared revenue across states
- Calculated average order value
- Evaluated freight costs by region
- Measured year-over-year growth in order value

### Logistics & Delivery Analysis

- Calculated delivery time for every order
- Compared estimated and actual delivery dates
- Identified states with the fastest and slowest deliveries
- Analyzed freight efficiency across regions

### Payment Analysis

- Compared payment methods
- Analyzed installment usage
- Evaluated customer payment preferences

---

# Key Insights

### 📈 Strong Business Growth

- Orders increased significantly from 2017 to 2018 despite only ten months of data being available for 2018.
- Customer spending increased by approximately **136%**, indicating strong growth in overall business performance.

---

### 🛍 Customer Purchasing Behavior

- Most purchases were placed during the **afternoon**, while very few orders were placed during early morning hours.
- Monthly order trends clearly revealed seasonal demand patterns that can support inventory planning and staffing decisions.

---

### 🌎 Regional Performance

- São Paulo (SP) had the largest customer base and generated the highest revenue.
- SP, RJ, and MG consistently ranked among the strongest-performing states in terms of customer volume and sales.
- Several lower-volume states present opportunities for targeted marketing campaigns and business expansion.

---

### 🚚 Freight & Logistics

- High-volume states generally experienced lower average freight costs due to better logistics efficiency.
- Remote states such as RR, AC, and AM showed significantly higher freight costs, indicating opportunities to optimize warehouse placement and shipping routes.

---

### 📦 Delivery Performance

- Delivery performance varied considerably across states.
- States including SP, PR, MG, DF, and SC demonstrated the shortest average delivery times.
- States such as RR, AP, AM, AL, and PA experienced longer delivery times, highlighting opportunities to improve logistics operations.

---

### 💳 Payment Behavior

- Credit cards were the most frequently used payment method.
- Most customers preferred paying in **1 to 3 installments**, suggesting a preference for shorter repayment periods.

---

# Business Recommendations

Based on the analysis, several opportunities were identified:

- Improve customer retention as order volume continues to grow.
- Increase inventory during high-demand months identified through seasonality analysis.
- Expand targeted marketing campaigns in lower-performing states.
- Optimize warehouse locations to reduce freight costs in remote regions.
- Improve delivery performance in high-delay states using logistics practices from top-performing regions.
- Explore competitive installment plans to encourage larger purchases.
- Schedule promotions and customer support during peak purchasing hours.
