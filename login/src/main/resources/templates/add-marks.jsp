<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Marks</title>
</head>
<body>
    <h1>Add Marks for Student: ${student.name}</h1>
    <form action="/marks/add" method="post">
        <input type="hidden" name="studentId" value="${student.id}">
        <label for="math">Math:</label>
        <input type="number" id="math" name="math" required>
        <br>
        <label for="science">Science:</label>
        <input type="number" id="science" name="science" required>
        <br>
        <label for="social">Social:</label>
        <input type="number" id="social" name="social" required>
        <br>
        <label for="english">English:</label>
        <input type="number" id="english" name="english" required>
        <br>
        <label for="secondLanguage">Second Language:</label>
        <input type="number" id="secondLanguage" name="secondLanguage" required>
        <br>
        <button type="submit">Add Marks</button>
    </form>
</body>
</html>
