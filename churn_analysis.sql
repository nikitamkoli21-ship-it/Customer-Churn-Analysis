
CREATE DATABASE churn_db;
GO
USE churn_db;
GO


CREATE TABLE customer_churn_clean (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen INT,
    tenure INT,
    Contract VARCHAR(20),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    PaymentMethod VARCHAR(30),
    Churn VARCHAR(5)
);


SELECT Churn, COUNT(*) AS total_customers
FROM customer_churn_clean
GROUP BY Churn;


SELECT Contract, Churn, COUNT(*) AS customers
FROM customer_churn_clean
GROUP BY Contract, Churn;

SELECT tenure, Churn, COUNT(*) AS customers
FROM customer_churn_clean
GROUP BY tenure, Churn;

SELECT MonthlyCharges, Churn
FROM customer_churn_clean;
