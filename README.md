<<<<<<< HEAD
# Ola-Ride-Analysis
=======
# Ola Data Analytics Project 🚖

## 📌 Project Overview  
This end-to-end data analytics project focuses on **Ola ride data**, where I performed both **SQL-based analysis** and **interactive dashboard development in Power BI**.  

The objective was to:  
- Derive actionable insights from customer rides, cancellations, revenue, and driver ratings.  
- Solve real-world business problems using SQL queries.  
- Build a professional multi-page Power BI dashboard to present findings interactively.  

This project demonstrates my skills in **SQL, DAX, Power BI, and storytelling with data**.  

---

## 🛠 Tools & Technologies  
- **SQL** → Data querying, cleaning, and solving problem statements  
- **Power BI** → Data modeling, DAX measures, and dashboard creation  
- **Excel** → Preliminary checks & data handling  

---

## 📊 SQL Problem Statements Solved  

I wrote optimized SQL queries to answer key business questions, including:  

1. Find the number of successful bookings.  
2. Identify the average ride distance per vehicle type.  
3. Calculate the cancellation rate (driver vs customer).  
4. Find the most frequently used payment method.  
5. Identify top 5 customers based on total bookings.  
6. Calculate total revenue generated per vehicle type.  
7. Identify the average customer rating per vehicle type.  
8. Find the city with the highest number of rides.  
9. Calculate total revenue earned from rides paid via UPI.  
10. Find the top 5 drivers based on customer ratings.  

👉 These queries showcase my ability to use **aggregations, CASE statements, GROUP BY, joins, and filtering** in SQL.  

---

## 📈 Power BI Dashboard  

A **5-page interactive dashboard** was built to visualize the insights:  

1. **Overall Analysis** → High-level KPIs (Total Rides, Total Revenue, Avg Distance, Cancellation Rate).  
2. **Vehicle Type Analysis** → Revenue, rides, ratings, and distance segmented by vehicle type.  
3. **Revenue Insights** → Trends in revenue by city, vehicle type, and payment mode.  
4. **Cancellation Insights** → Deep dive into cancellations by customers vs drivers, city-wise patterns.  
5. **Customer & Driver Insights** → Top customers, top drivers, and rating analysis.  

---

## 🔢 Key DAX Measures  

Examples of DAX measures implemented in Power BI:  

```DAX
-- Total Revenue
Total Revenue = SUM(Rides[Fare_Amount])

-- Average Distance
Avg Distance = AVERAGE(Rides[Distance])

-- Cancellation Rate
Cancellation Rate = 
DIVIDE(
    COUNTROWS(FILTER(Rides, Rides[Status] = "Cancelled")),
    COUNTROWS(Rides),
    0
)

-- Average Customer Rating
Avg Rating = AVERAGE(Rides[Customer_Rating])

>>>>>>> d9fd612 (Added Ola Ride Analysis project with SQL, Power BI, and README)
