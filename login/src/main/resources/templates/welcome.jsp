
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #007BFF;
            color: #fff;
            padding: 20px;
            margin: 0;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }

        .button-container {
            margin: 20px;
            text-align: center;
        }

        button {
            padding: 15px 30px;
            font-size: 18px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Student Management System</h1>

    <div class="container">
        <div class="button-container">
            <form method="post" action="form">
                <button type="submit">Add Student</button>
            </form>
        </div>

        <div class="button-container">
            <form method="post" action="deleteStudent.jsp">
                <button type="submit">Delete Student</button>
            </form>
        </div>

        <div class="button-container">
            <form method="post" action="addMarks">
                <button type="submit">Add Marks</button>
            </form>
        </div>

        <div class="button-container">
    <form method="post" action="/result">
        <button type="submit">View Students</button>
    </form>
</div>

    </div>
</body>
</html>
