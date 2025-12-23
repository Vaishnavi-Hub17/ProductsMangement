<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f6f9;
}


#abc {
    border-radius: 10px;
    width: 350px;
    padding: 25px;
    background-color: #0d6efd;
    color: white;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
}


#abc h1 {
    margin-bottom: 10px;
}

#abc h3 {
    margin-bottom: 20px;
    color: #ffeeba;
}


a button {
    width: 160px;
    padding: 12px;
    margin: 8px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 15px;
    font-weight: bold;
    background-color: #28a745;
    color: white;
}


a button:hover {
    background-color: #218838;
}
</style>

</head>
<body>

<div align="center" style="margin-top:100px;">

    <div id="abc">
        <h1>Product Management</h1>
        <h3>${message}</h3>

        <a href="add">
            <button>Add Products</button>
        </a>
        <br>
        <a href="manage">
            <button>View Products</button>
        </a>
    </div>

</div>

</body>
</html>
