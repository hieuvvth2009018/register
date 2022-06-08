<%
    String username =  (String) request.getAttribute("username");
    String fullName =  (String) request.getAttribute("fullName");
    String Email =  (String) request.getAttribute("Email");
    String passwordHash =  (String) request.getAttribute("passwordHash");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: black;
        }
        * {
            box-sizing: border-box;
        }
        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }
        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }
        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }
        /* Overwrite default styles of hr */
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }
        /* Set a style for the submit button */
        .registerbtn {
            background-color: #04AA6D;
            color: white;
            padding: 16px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }
        .registerbtn:hover {
            opacity: 1;
        }
       a {
            color: dodgerblue;
        }
    </style>
</head>
<body>
<%--<h2><%=username%></h2>--%>
<%--<h2><%=fullName%></h2>--%>
<%--<h2><%=Email%></h2>--%>
<%--<h2><%=passwordHash%></h2>--%>
<form action="/register" method="post">
    <div class="container">
        <h1>Register </h1>
        <hr>
        <label for="fullName"><b>FullName</b></label>
        <input type="text" placeholder="Enter FullName" name="fullName" id="fullName" required>

        <label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" id="username" required>

        <label for="Email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="Email" id="Email" required>

        <label for="passwordHash"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="passwordHash" id="passwordHash" required>

        <label for="">Choose a status:</label>
        <select name="status" id="" required>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select>
        <hr>
        <button type="submit" class="registerbtn">Register</button>
    </div>
</form>
</body>
</html>