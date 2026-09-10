# 📊 IBM Customer Churn Analysis & Prediction

---

## 🧠 Project Overview

This project analyzes customer churn behavior using the **IBM Telco Customer Churn Dataset** and builds a predictive model to identify customers likely to leave. The goal is not just to predict churn, but to understand **why customers leave** and design actionable retention strategies.

---

## 🎯 Problem Statement

The **IBM Telco Customer Churn Dataset** contains customer data from a fictional telecom company provided by IBM. The objectives are to:

- Identify key drivers of churn
- Predict customers at risk
- Recommend data-driven retention strategies

---

## 🛠️ Tools & Technologies

| Category | Tools |
|---|---|
| Programming | Python (Pandas, NumPy, Scikit-learn, Seaborn, Matplotlib) |
| Database | SQL (PostgreSQL) |
| Visualization | Power BI |
| Machine Learning | Logistic Regression |

---

## 📁 Dataset

| Attribute | Detail |
|---|---|
| Source | IBM Sample Dataset (IBM Cognos Analytics) |
| Domain | Telecom / Customer Churn |
| Records | 7,043 customers |
| Features | 21 columns (demographics, services, billing, churn label) |
| Target Variable | `Churn` (Yes / No) |

> The dataset is publicly available via [IBM's sample data repository](https://www.ibm.com/communities/analytics/watson-analytics-blog/watson-analytics-use-case-for-telco-churn/) and is widely used for churn analysis and classification tasks.



Key patterns observed during exploratory data analysis:

- 📉 **High churn in early tenure** → onboarding issues
- 🔁 **Month-to-month contracts** → highest churn rate
- 💸 **Higher monthly charges** → increased churn risk
- 🔌 **No tech support usage** → low engagement → churn
- 💳 **Electronic check users** → less retention

---

## 🤖 Machine Learning Model

| Attribute | Detail |
|---|---|
| Model Used | Logistic Regression |
| Accuracy | ~80% |
| Focus | Recall optimization for churn detection |

### ⚡ Threshold Optimization

| Threshold | Effect |
|---|---|
| Default (0.5) | Lower churn detection |
| Adjusted (0.3) | Improved recall |

> **Trade-off:** Higher false positives, but better retention targeting.

---

## 📊 Key Features Influencing Churn

| Feature | Impact |
|---|---|
| Contract Type | Month-to-month ↑ churn |
| Tenure | Low tenure ↑ churn |
| Monthly Charges | Higher charges ↑ churn |
| Tech Support | Absence ↑ churn |
| Payment Method | Electronic check ↑ churn |

---

## 🧬 Churn Playbook (Actionable Insights)

### 🔴 High Risk Customers

**Profile:**
- New users (< 3 months tenure)
- High charges + low engagement
- Month-to-month contracts

**Recommended Actions:**
- Launch onboarding campaigns
- Offer discounted long-term plans
- Deliver personalized engagement

---

### 🟡 Medium Risk Customers

**Profile:**
- Moderate tenure
- Partial feature usage

**Recommended Actions:**
- Provide feature recommendations
- Send usage nudges and reminders

---

### 🟢 Low Risk Customers

**Profile:**
- Long tenure
- Auto-payment users
- Multi-service subscribers

**Recommended Actions:**
- Enroll in loyalty programs

---

## 🗄️ SQL Analysis

Data stored in **PostgreSQL** and analyzed using SQL queries covering:

- Churn rate by contract type
- Churn by tenure segments
- Churn by payment method
- Price-based churn segmentation

---

## 📊 Power BI Dashboard

An interactive dashboard was built to visualize:

- Churn distribution
- Customer behavior patterns
- Key churn drivers

---

## 💾 Model Deployment

The trained model is saved using **`joblib`** (`.pkl` file), enabling reuse without retraining on every run.

---

## 📈 Business Impact

| Metric | Before | After |
|---|---|---|
| Churn Detection Rate | ~57% | ~74% |

- Early identification of at-risk customers
- Enables proactive, targeted retention strategies

---

## 🚀 Conclusion

This project goes beyond prediction by combining:

- ✅ Data Analysis
- ✅ Machine Learning
- ✅ Business Strategy

It demonstrates how data can be used to not only **understand churn** but actively **reduce it** through targeted, evidence-based actions.

---

## 📌 Future Improvements

- [ ] Use advanced models (Random Forest, XGBoost)
- [ ] Build a real-time prediction API
- [ ] Integrate dashboard with a live database

---

## 👤 Author

**Manas Chaturvedi**
Engineering Student | Data Analytics Enthusiast
