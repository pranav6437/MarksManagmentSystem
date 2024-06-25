<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Student Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        form {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <form action="/form" method="POST">
        <label for="id">ID:</label>
<input type="number" id="id" name="id" required/>

<label for="firstname">First Name:</label>
<input type="text" id="firstname" name="firstname" required/>

        <label for="maths">Maths:</label>
        <input type="text" id="maths" name="maths" required/>

        <label for="science">Science:</label>
        <input type="text" id="science" name="science" required/>

        <label for="social">Social:</label>
        <input type="text" id="social" name="social" required/>

        <label for="english">English:</label>
        <input type="text" id="english" name="english" required/>

        <label for="secondlanguage">Second Language:</label>
        <input type="text" id="secondlanguage" name="secondlanguage" required/>
        

        <input type="submit" value="Register">
    </form>
</body>
</html>

