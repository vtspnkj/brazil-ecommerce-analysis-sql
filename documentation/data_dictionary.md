# Data Dictionary

This document describes the primary tables and important fields used in the Brazil E-commerce SQL Analysis project.

---

# customers

| Column | Description |
|---------|-------------|
| customer_id | Unique customer identifier |
| customer_unique_id | Unique identifier representing the actual customer |
| customer_city | Customer city |
| customer_state | Customer state |

---

# orders

| Column | Description |
|---------|-------------|
| order_id | Unique order identifier |
| customer_id | Customer associated with the order |
| order_status | Current order status |
| order_purchase_timestamp | Date and time when the order was placed |
| order_approved_at | Date and time when payment was approved |
| order_delivered_carrier_date | Date shipped by seller |
| order_delivered_customer_date | Date delivered to customer |
| order_estimated_delivery_date | Estimated delivery date |

---

# order_items

| Column | Description |
|---------|-------------|
| order_id | Order identifier |
| product_id | Product identifier |
| seller_id | Seller identifier |
| shipping_limit_date | Shipping deadline |
| price | Product price |
| freight_value | Shipping cost |

---

# payments

| Column | Description |
|---------|-------------|
| order_id | Order identifier |
| payment_sequential | Payment sequence number |
| payment_type | Payment method |
| payment_installments | Number of installments |
| payment_value | Total payment amount |

---

# products

| Column | Description |
|---------|-------------|
| product_id | Product identifier |
| product_category_name | Product category |
| product_weight_g | Product weight |
| product_length_cm | Product length |
| product_height_cm | Product height |
| product_width_cm | Product width |

---

# sellers

| Column | Description |
|---------|-------------|
| seller_id | Seller identifier |
| seller_city | Seller city |
| seller_state | Seller state |

---

# geolocation

| Column | Description |
|---------|-------------|
| geolocation_zip_code_prefix | ZIP code prefix |
| geolocation_city | City |
| geolocation_state | State |
| geolocation_lat | Latitude |
| geolocation_lng | Longitude |

---

# order_reviews

| Column | Description |
|---------|-------------|
| review_id | Review identifier |
| order_id | Order identifier |
| review_score | Customer rating (1–5) |
| review_creation_date | Review creation date |
| review_answer_timestamp | Review response timestamp |