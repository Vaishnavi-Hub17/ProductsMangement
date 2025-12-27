# 🛒 Product Management Application

A **Spring MVC + Hibernate + JSP** based web application for managing products with full **CRUD operations**.

This project was developed as part of learning **Spring MVC architecture**, **Hibernate (JPA)**, and **MySQL integration**.

---

## 📌 Project Status

✅ Core CRUD functionality completed (Add, View, Edit, Delete)  
🎨 UI/UX improvements will be added as learning progresses  
📚 Further enhancements will be implemented under faculty guidance  

---

## ✨ Features

- Add new products
- View all products
- Edit existing product details
- Delete products
- Hibernate auto table creation
- JSP-based frontend
- MVC architecture followed

---

## 🛠️ Technologies Used

- **Java 17**
- **Spring MVC**
- **Hibernate 6 (JPA)**
- **MySQL 8**
- **JSP / HTML / CSS**
- **Maven**
- **Apache Tomcat 11**

---

## ⚙️ How to Run the Project

### 1️⃣ Open Project
Open the project in **Eclipse / IntelliJ IDEA** as a **Maven Project**.

---

### 2️⃣ Database Setup

Create a MySQL database (optional – Hibernate can auto-create):

```sql
CREATE DATABASE product_db;





🏗️ Project Structure


Product/
│
├── src/main/java/pro/
│   ├── Config/
│   │   ├── MyConfig.java
│   │   └── MyDispatcher.java
│   │
│   ├── Controller/
│   │   └── ProductController.java
│   │
│   ├── dao/
│   │   └── ProductDoa.java
│   │
│   └── Entity/
│       └── Product.java
│
├── src/main/resources/
│   └── META-INF/
│       └── persistence.xml
│
├── src/main/webapp/
│   └── WEB-INF/
│       └── views/
│           ├── main.jsp
│           ├── add.jsp
│           ├── edit.jsp
│           └── view.jsp
│
├── pom.xml
└── README.md


















