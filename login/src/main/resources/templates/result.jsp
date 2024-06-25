<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result - Student Data</title>
</head>
<body>
<h1>Student Data from Database</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>First Name</th>
    </tr>
    <c:forEach items="${students}" var="student">
        <tr>
            <td>${marks.id}</td>
            <td>${marks.firstname}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
