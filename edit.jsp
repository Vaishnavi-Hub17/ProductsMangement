<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Movie</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f6f9;
}

/* Card */
.container {
    margin-top: 80px;
    width: 380px;
    padding: 25px;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

/* Heading */
h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #0d6efd;
}

/* Labels */
label {
    display: block;
    margin-top: 12px;
    font-weight: bold;
}

/* Inputs */
input {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 14px;
}

/* Button */
button {
    width: 100%;
    margin-top: 20px;
    padding: 12px;
    background-color: #ffc107;
    color: #212529;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 6px;
    cursor: pointer;
}

button:hover {
    background-color: #e0a800;
}
</style>

</head>
<body>

<div align="center">
    <div class="container">
        <h1>✏️ Edit Movie</h1>

        <form action="editMovie" method="post">

            <!-- Hidden ID (important for update) -->
            <input type="hidden" name="movieId" value="${movie.id}">

            <label>Movie Name</label>
            <input type="text" name="movieName" value="${movie.name}" required>

            <label>Image Link</label>
            <input type="url" name="imageLink" value="${movie.imageLink}" required>

            <label>Rating (1–10)</label>
            <input type="number" name="rating" value="${movie.rating}" min="1" max="10" required>

            <label>Genre</label>
            <input type="text" name="genre" value="${movie.genre}" required>

            <button type="submit">Update Movie</button>
        </form>
    </div>
</div>

</body>
</html>
