<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f6f9;
}


.container {
    margin-top: 80px;
    width: 380px;
    padding: 25px;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}


h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #0d6efd;
}


label {
    display: block;
    margin-top: 12px;
    font-weight: bold;
}


input {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 14px;
}


button {
    width: 100%;
    margin-top: 20px;
    padding: 12px;
    background-color: #28a745;
    color: white;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 6px;
    cursor: pointer;
}

button:hover {
    background-color: #218838;
}
</style>

</head>
<body>

<div align="center">
    <div class="container">
        <h1>Enter Products Details</h1>

        <form action="add" method="post">
        <input type="hidden" name="id" value="${product.id}">
            <label>Products Name</label>
            <input type="text" name="name" value="${product.name}" >

            <label>Image Link</label>
            <input type="url" name="imageLink" value="${product.imageLink}">

               <label>Price</label>
            <input type="number" name="price" value="${product.price}" >
            
            <label>Rating (1–10)</label>
            <input type="number" name="rating" min="1" max="10" value="${product.rating }">
            <label>Review</label>
            <input type="text" name="review" value="${product.review}">
            <button type="submit">Updated</button>
        </form>
    </div>
</div>

</body>
</html>
