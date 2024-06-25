<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Student Data</title>
    <style>
        /* Add CSS styles for better presentation */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            display: block;
            text-align: center;
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Student Data</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Maths Marks</th>
        <th>Science Marks</th>
        <th>Social Marks</th>
        <th>English Marks</th>
        <th>Second language Marks</th>
    </tr>
    <tr th:each="student : ${stud1}">
        <td th:text="${student.id}"></td>
        <td th:text="${student.firstname}">
        <td th:text="${student.maths}">
        <td th:text="${student.science}">
        <td th:text="${student.social}">
        <td th:text="${student.english}">
        <td th:text="${student.secondlanguage}">
        </td>
        
    </tr>
</table>
    <a href="/result">View All Students</a>

    <script>
        // Add JavaScript for interactivity if needed
        // For example, you can use JavaScript to handle events or AJAX requests.
    </script>
</body>
</html>
