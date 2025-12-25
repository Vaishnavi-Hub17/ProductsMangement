# 🌟 Product Management Application (Work in Progress)

A **Spring MVC + Hibernate + JSP** web application for managing products.

> ⚠️ **Work in Progress** – currently supports **adding products** and **viewing the product list only**.  
> Edit/Delete functionality **under development**.

---

## 🎯 Features (Implemented)

- Add new products with:
  - Name  
  - Image URL  
  - Rating  
  - Review
- View all products in a clean, styled table.
- Hibernate automatically creates/updates the database table.
- Simple JSP frontend.

---

## 🛠️ Planned Features

- Edit products  
- Delete products    
- Responsive UI with better styling  

---

## 💻 Technologies Used

- **Java 21**  
- **Spring MVC 6.x**  
- **Hibernate 6.x (JPA)**  
- **MySQL 8.x**  
- **JSP / HTML / CSS**  
- **Maven**  
- **Tomcat 11**  

---

## ⚙️ How to Run Locally

1. **Open the project in your IDE** (Eclipse).  
2. **Setup MySQL database**:

```sql
CREATE DATABASE product_db;



ProductApp/
│
├─ src/main/java/pro/
│   ├─ Config/
│   │   ├─ MyConfig.java
│   │   └─ MyDispatcher.java
│   ├─ Controller/
│   │   └─ ProductController.java
│   ├─ dao/
│   │   └─ ProductDoa.java
│   └─ Entity/
│       └─ Product.java
│
├─ src/main/resources/META-INF/
│   └─ persistence.xml
│
├─ src/main/webapp/WEB-INF/views/
│   ├─ main.jsp
│   ├─ add.jsp
│   └─ view.jsp
│
├─ pom.xml
└─ README.md
