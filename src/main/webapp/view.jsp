<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@page import="java.util.List, pro.Entity.Product" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f6f9;
}

h1 {
    text-align: center;
    color: #0d6efd;
    margin-top: 30px;
}

table {
    width: 80%;
    margin-top: 20px;
    border-collapse: collapse;
    background-color: white;
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

th, td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #0d6efd;
    color: white;
}

tr:hover {
    background-color: #f1f1f1;
}

img {
    width: 80px;
    height: auto;
    border-radius: 5px;
}

.action-btn {
    padding: 6px 10px;
    border-radius: 5px;
    border: none;
    cursor: pointer;
    font-size: 14px;
}

.edit {
    background-color: #ffc107;
}

.delete {
    background-color: #dc3545;
    color: white;
}
</style>

</head>
<body>

<h1>Product List</h1>

<div align="center">

<table>
    <tr>
        <th>Product</th>
        <th>Image</th>
         <th>Price</th>
        <th>Rating</th>
        <th>Review</th>
        <th>Action</th>
    </tr>
    <% 
    List<Product> products = (List) request.getAttribute("products");
    for(Product product : products) {
    %>
      <tr>
        <td><%=product.getName() %></td>
        <td><img height="100px" width="100px" src="<%=product.getImageLink()%>"></td>
        <td><%=product.getPrice() %></td>
        <td><%=product.getRating() %></td>
        <td><%=product.getReview() %></td>
        <td>
         <a href="edit?id=<%=product.getId() %>"><button>Edit</button></a> 
       <a href="delete?id=<%=product.getId() %>"><button>Delete</button></a> 
        </td>
    </tr>
        <%
        }
        %>
</table>
</div>
</body>
</html>
