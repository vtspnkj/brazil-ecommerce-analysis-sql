# 🇧🇷 Brazilian E-commerce Dataset

## Overview

This project uses the Brazilian E-commerce Public Dataset by Olist.

The dataset contains information about customer orders placed between 2016 and 2018 through multiple marketplaces in Brazil. It includes customer information, order details, products, sellers, payments, freight charges, delivery dates, and customer reviews.

The dataset is commonly used for SQL, data analysis, and business intelligence projects.

---

## Dataset Tables

| Table | Description |
|--------|-------------|
| customers | Customer information and location |
| orders | Order lifecycle and timestamps |
| order_items | Products purchased in each order |
| payments | Payment method, installments, and payment value |
| products | Product information |
| sellers | Seller information |
| geolocation | Geographic coordinates |
| reviews | Customer review scores and comments |
| category_translation | Portuguese to English product category translation |

---

## Dataset Relationships

The tables are connected using primary and foreign keys.

Main relationships include:

- customers → orders
- orders → order_items
- orders → payments
- orders → reviews
- order_items → products
- order_items → sellers

---

## Skills Demonstrated

- SQL Joins
- Aggregate Functions
- Common Table Expressions (CTEs)
- Window Functions
- Date Functions
- Business Analysis
- Data Cleaning
- Data Exploration

---

## Source

Target Brazil E-commerce Case Study

Public dataset based on the Olist Brazilian E-commerce Dataset.