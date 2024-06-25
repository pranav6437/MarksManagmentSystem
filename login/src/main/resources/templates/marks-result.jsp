<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Marks</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    #nameAndId {
      background-color: #333;
      color: #fff;
      padding: 10px;
      text-align: center;
    }

    .data-container {
      background-color: #fff;
      margin: 20px;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 10px;
      text-align: center;
      border: 1px solid #ccc;
    }

    th {
      background-color: #333;
      color: #fff;
    }

    .revaluation-button {
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
      border-radius: 5px;
      transition: background-color 0.3s;
    }

    .revaluation-button:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div id="nameAndId">
    <p th:text="${marks.id}"></p>
    <p th:text="${marks.name}"></p>
  </div>
  <div class="data-container">
    <table>
      <tr>
        <th>Subject</th>
        <th>Marks</th>
      </tr>
      <tr th:if="${marks != null}">
        <td>Maths</td>
        <td th:text="${marks.maths}"></td>
      </tr>
      <tr th:if="${marks != null}">
        <td>Science</td>
        <td th:text="${marks.science}"></td>
      </tr>
      <tr th:if="${marks != null}">
        <td>Social</td>
        <td th:text="${marks.social}"></td>
      </tr>
      <tr th:if="${marks != null}">
        <td>English</td>
        <td th:text="${marks.english}"></td>
      </tr>
      <tr th:if="${marks != null}">
        <td>Second Language</td>
        <td th:text="${marks.secondlanguage}"></td>
      </tr>
    </table>
    
   <p style="font-family: Arial, sans-serif; color: red;">&lt;35 Considered As Fail</p>
<p style="font-family: Helvetica, Arial, sans-serif; color: blue;">Revaluation Can Only be applied to all subjects at Once</p>
   
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <button class="revaluation-button" id="myButton">Apply for Revaluation</button>
  </div>
  <script>
    // JavaScript code to handle button click
    document.getElementById("myButton").addEventListener("click", function() {
      // Redirect to the specified link
      window.location.href = "https://buy.stripe.com/test_dR6bIQ1GwaHwdKU4gg";
    });
  </script>
</body>
</html>
