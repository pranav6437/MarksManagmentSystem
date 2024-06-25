<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Marks</title>
</head>
<body>
    <h1>Add Marks</h1>
    <form action="/addMarks" method="POST">
        <label for="id">ID:</label>
        <input type="number" id="id" name="id" required/><br/>

        <label for="maths">Maths:</label>
        <input type="number" id="maths" name="maths" required/><br/>

        <label for="science">Science:</label>
        <input type="number" id="science" name="science" required/><br/>

        <label for="social">Social:</label>
        <input type="number" id="social" name="social" required/><br/>

        <label for="english">English:</label>
        <input type="number" id="english" name="english" required/><br/>

        <label for="secondlanguage">Second Language:</label>
        <input type="number" id="secondlanguage" name="secondlanguage" required/><br/>

        <input type="submit" value="Save">
    </form>
    <p style="color: red">${error}</p>
</body>
</html>
