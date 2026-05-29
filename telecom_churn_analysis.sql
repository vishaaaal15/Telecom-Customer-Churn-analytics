-- Project: Telecom Customer Churn & Retention Analytics
-- Tools Used: MySQL, Power BI
-- Author: https://github.com/vishaaaal15
create database telecom_curn_analysis;
Use telecom_curn_analysis;
CREATE TABLE telecom_churn (
    state VARCHAR(10),
    account_length INT,
    area_code INT,
    international_plan VARCHAR(10),
    voice_mail_plan VARCHAR(10),
    number_vmail_messages INT,
    total_day_minutes DECIMAL(10,2),
    total_day_calls INT,
    total_day_charge DECIMAL(10,2),
    total_eve_minutes DECIMAL(10,2),
    total_eve_calls INT,
    total_eve_charge DECIMAL(10,2),
    total_night_minutes DECIMAL(10,2),
    total_night_calls INT,
    total_night_charge DECIMAL(10,2),
    total_intl_minutes DECIMAL(10,2),
    total_intl_calls INT,
    total_intl_charge DECIMAL(10,2),
    customer_service_calls INT,
    churn VARCHAR(10)
);
SELECT * FROM telecom_churn LIMIT 10;

-- =====================================================
-- 2. EXECUTIVE KPIs
-- =====================================================

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM telecom_churn;

-- Churn Rate
SELECT
ROUND(
100.0 * SUM(CASE WHEN churn='True' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS churn_rate
FROM telecom_churn;

-- Average Account Length
SELECT ROUND(AVG(account_length),2)
AS avg_account_length
FROM telecom_churn;

-- =====================================================
-- 3. CUSTOMER BEHAVIOR ANALYSIS
-- =====================================================

-- Usage Behavior by Churn
SELECT
churn,
ROUND(AVG(total_day_minutes),2) AS avg_day_minutes,
ROUND(AVG(total_eve_minutes),2) AS avg_evening_minutes,
ROUND(AVG(total_night_minutes),2) AS avg_night_minutes
FROM telecom_churn
GROUP BY churn;

-- =====================================================
-- 4. PLAN ANALYSIS
-- =====================================================

-- International Plan Churn
SELECT
international_plan,
COUNT(*) AS customers,
ROUND(
100 * SUM(CASE WHEN churn='True' THEN 1 ELSE 0 END)/COUNT(*),
2
) AS churn_rate
FROM telecom_churn
GROUP BY international_plan;

-- =====================================================
-- 5. CUSTOMER SERVICE ANALYSIS
-- =====================================================

SELECT
customer_service_calls,
COUNT(*) AS customers,
ROUND(
100 * SUM(CASE WHEN churn='True' THEN 1 ELSE 0 END)/COUNT(*),
2
) AS churn_rate
FROM telecom_churn
GROUP BY customer_service_calls
ORDER BY customer_service_calls;