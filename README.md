# 📊 Telecom Customer Churn Intelligence Platform

> **An end-to-end analytics and machine learning solution designed to analyze customer behavior, identify churn drivers, predict at-risk customers, and support proactive retention strategies using Excel, SQL, Python, Machine Learning, Power BI, and Tableau.**

![Python](https://img.shields.io/badge/Python-3.10-blue?logo=python)
![SQL](https://img.shields.io/badge/SQL-MySQL-orange?logo=mysql)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi)
![Tableau](https://img.shields.io/badge/Tableau-Visualization-blue?logo=tableau)
![Excel](https://img.shields.io/badge/Excel-Analytics-green?logo=microsoft-excel)
![Machine Learning](https://img.shields.io/badge/Machine%20Learning-Random%20Forest-red)

---

## 📌 Project Overview

Customer churn significantly impacts profitability in the telecommunications industry. Retaining existing customers is often more cost-effective than acquiring new ones. This project provides an end-to-end churn intelligence solution that combines descriptive, diagnostic, and predictive analytics to uncover the factors influencing customer attrition and identify customers at risk of leaving.

The project integrates **Excel, SQL, Python, Machine Learning, Power BI, and Tableau** to transform raw telecom data into actionable business insights.

---

## 🎯 Business Problem

Telecom companies face challenges in identifying customers likely to churn before they leave. Without a proactive retention strategy, organizations may experience:

- Revenue loss due to customer attrition.
- Increased customer acquisition costs.
- Reduced customer lifetime value.
- Inefficient allocation of retention resources.
- Lower customer satisfaction and loyalty.

### Project Objectives

- Analyze customer behavior patterns.
- Identify the key drivers of churn.
- Build predictive models to forecast churn.
- Develop executive dashboards for decision-making.
- Provide actionable recommendations to improve customer retention.

---

## 🛠️ Tech Stack

| Category | Tools |
|-----------|--------|
| Spreadsheet Analytics | Excel |
| Database Management | MySQL |
| Programming Language | Python |
| Data Manipulation | Pandas, NumPy |
| Machine Learning | Scikit-learn |
| Data Visualization | Matplotlib |
| Business Intelligence | Power BI, Tableau |
| Version Control | Git & GitHub |

---

## 📂 Repository Structure

```text
Telecom-Customer-Churn-Intelligence-Platform/
│
├── data/
│   └── telecom_churn.csv
│
├── excel/
│   └── Telecom_Churn_Excel_Dashboard.xlsx
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_business_analysis.sql
│   └── 03_customer_segmentation.sql
│
├── machine_learning/
│   ├── 01_data_preprocessing.ipynb
│   ├── 02_model_building.ipynb
│   └── feature_importance.png
│
├── powerbi/
│   └── Telecom_Churn_Dashboard.pbix
│
├── tableau/
│   └── Telecom_Churn_Dashboard.twbx
│
├── images/
│   ├── excel_dashboard.png
│   ├── powerbi_dashboard.png
│   ├── tableau_dashboard.png
│   └── feature_importance.png
│
└── README.md
```

---

## 🔄 Project Workflow

```text
Raw Telecom Customer Data
            ↓
Excel Data Cleaning & KPI Analysis
            ↓
SQL Business Analysis
            ↓
Python Data Preprocessing
            ↓
Machine Learning Churn Prediction
            ↓
Feature Importance Analysis
            ↓
Power BI Executive Dashboard
            ↓
Tableau Interactive Dashboard
            ↓
Business Recommendations
```

---

## 📈 Excel Analytics

### Key Activities

- Data Cleaning and Validation
- KPI Development
- Pivot Table Analysis
- Interactive Dashboard Design

### KPIs Tracked

- Total Customers
- Churned Customers
- Churn Rate
- Average Account Length
- Average Customer Service Calls
- High-Risk Customer Count

---

## 🗃️ SQL Business Analysis

SQL was used to answer critical business questions and generate actionable insights.

### Business Questions Addressed

- What is the overall customer churn rate?
- Are customers with international plans more likely to churn?
- Which states exhibit the highest churn rates?
- How do customer service interactions influence churn?
- Which customer segments are at greater risk?

### Sample SQL Analysis

```sql
SELECT
    state,
    COUNT(*) AS churned_customers
FROM telecom_data
WHERE churn = TRUE
GROUP BY state
ORDER BY churned_customers DESC
LIMIT 5;
```

---

## 🤖 Machine Learning

### Objective

Develop predictive models capable of identifying customers likely to churn.

### Data Preparation

- Encoded categorical variables.
- Performed train-test split using stratification.
- Prepared data for supervised learning.

### Models Developed

| Model | Purpose |
|---------|---------|
| Logistic Regression | Baseline Classification Model |
| Random Forest | Ensemble Learning Model |

---

## 📊 Model Performance

| Metric | Logistic Regression | Random Forest |
|----------|--------------------|----------------|
| Accuracy | 84.08% | **95.51%** |
| Precision | 39.39% | **98.21%** |
| Recall | 16.67% | **70.51%** |
| F1 Score | 23.42% | **82.09%** |
| ROC-AUC | 75.10% | **86.83%** |

### Selected Model

🏆 **Random Forest**

The Random Forest model demonstrated the strongest predictive performance and was selected as the final churn prediction model.

---

## 🔍 Feature Importance Analysis

Feature importance analysis revealed the primary factors contributing to customer churn.

### Key Churn Drivers

- Customer Service Calls
- International Plan Enrollment
- Total Day Minutes
- Total Day Charges
- Account Length

These findings enable businesses to prioritize high-risk customers and design targeted retention initiatives.

---

## 📊 Power BI Dashboard

### Dashboard Highlights

- Executive KPI Overview
- Churn Distribution Analysis
- Customer Segmentation
- Geographic Churn Insights
- High-Risk Customer Identification
- Retention Opportunity Monitoring

---

## 📊 Tableau Dashboard

### Dashboard Highlights

- Interactive Churn Analysis
- Customer Segmentation Visualization
- State-wise Churn Distribution
- Customer Service Impact Assessment
- International Plan Churn Comparison
- Executive Performance Metrics

### Purpose

The Tableau dashboard demonstrates cross-platform business intelligence capabilities and provides stakeholders with an alternative interactive reporting environment.

---

## 📸 Dashboard Gallery

### Excel Dashboard

![Excel_Dashboard](Excel_Dashboard.png)

---

### Power BI Dashboard

![Power BI_Dashboard](images/PowerBI_Dashboard.png)

---

### Tableau Dashboard

![Tableau Dashboard](images/tableau_dashboard.png)

---

### Feature Importance Analysis

![Feature Importance](images/feature_importance.png)

---

## 💡 Business Recommendations

### 1. Prioritize High-Risk Customers

Customers making frequent service calls should be targeted through proactive retention programs.

---

### 2. Review International Plan Offerings

Assess pricing structures and customer satisfaction levels associated with international plans.

---

### 3. Implement Predictive Monitoring

Deploy the Random Forest model to continuously identify customers at risk of churning.

---

### 4. Enhance Customer Support Experience

Improve customer service responsiveness and issue resolution processes to reduce dissatisfaction.

---

### 5. Develop Personalized Retention Campaigns

Use customer behavior insights to create targeted interventions for high-risk segments.

---

## 📌 Key Outcomes

✅ Developed an end-to-end churn intelligence platform.

✅ Combined descriptive, diagnostic, and predictive analytics.

✅ Built dashboards using Excel, Power BI, and Tableau.

✅ Performed SQL-based business analysis to uncover churn patterns.

✅ Achieved **95.51% accuracy** using Random Forest.

✅ Identified the most influential factors driving customer churn.

✅ Generated actionable recommendations to support retention strategies.

---

## 🚀 Getting Started

### Clone the Repository

```bash
git clone https://github.com/vishaaaal15/Telecom-Customer-Churn-Intelligence-Platform.git
```

### Navigate to the Project Directory

```bash
cd Telecom-Customer-Churn-Intelligence-Platform
```

### Install Dependencies

```bash
pip install pandas numpy scikit-learn matplotlib jupyter
```

### Launch Jupyter Notebook

```bash
jupyter notebook
```

### Explore the Project Components

```text
excel/              → Excel Dashboard
sql/                → SQL Scripts
machine_learning/   → ML Notebooks
powerbi/            → Power BI Dashboard
tableau/            → Tableau Dashboard
```

---

## 👨‍💻 Author

### Vishal Singh

**Aspiring Data Analyst | Business Analyst | Data Science Enthusiast**

### Skills

- SQL
- Excel
- Power BI
- Tableau
- Python
- Machine Learning
- Data Visualization

### Connect

- GitHub: https://github.com/vishaaaal15
- LinkedIn: https://linkedin.com/vishal-singhdataanalyst

---

## ⭐ Support

If you found this project insightful, consider giving this repository a **star** to support the work and help others discover it.

---

> **"Predicting churn is not just about identifying who leaves—it's about understanding why they leave and empowering organizations to act before it's too late."**
