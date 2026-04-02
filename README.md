# E-Commerce Operations Monitoring Dashboard

## Background and Overview
This project focuses on building a monitoring system for e-commerce operations using transactional order data. The goal is to track key business metrics such as order volume, revenue, delivery performance, and delays.

A data pipeline built with Python to clean and transform data, which was stored in PostgreSQL. Grafana dashboards were created to monitor performance and trigger alerts.

## Data Structure Overview
The dataset includes:

- **orders**: order details, timestamps, and status  
- **order_items**: product level pricing and freight  
- **payments**: payment values and methods  
- **customers**: customer location details  
- **products**: product attributes  

Relationships:
- `order_id` connects orders, order_items, and payments  
- `customer_id` connects orders and customers  
- `product_id` connects order_items and products  


## Executive Summary
- Total orders processed: ~99K  
- Total revenue generated: ~$16M  
- Average delivery time: ~12 days  
- Delayed orders: ~7.8%  

Most orders are delivered successfully, but delays vary across regions. A few states contribute significantly to overall revenue.


## Insights

- Delivery delays occur when actual delivery exceeds estimated timelines
- Most orders are successfully delivered, indicating stable fulfilment
- Revenue is higher in few key regions
- Dashboards track key metrics like delivery time and delays


## Recommendations

- Reduce delays by analyzing time between order, shipping, and delivery
- Investigate high-delay regions
- Improve delivery time estimates  
- Analyze seller performance to identify delays and top contributors


## Tech Stack
Python (Pandas), PostgreSQL, SQL, Grafana, Docker

---
