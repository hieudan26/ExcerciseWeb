<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hieud
  Date: 12/10/2021
  Time: 10:12 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #F6E9D9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
    </style>
</head>
<jsp:include page="../header.jsp" />
<body style="margin: 0 auto">
<div>
    <form action="surveyServlet" method="post">
        <h1>Survey</h1>
        <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>

        <h2>Your information:</h2>
        <label class="pad_top">First Name</label>
        <input type="text" name="firstName" required><br>
        <label class="pad_top">Last Name</label>
        <input type="text" name="lastName" required><br>
        <label class="pad_top">Email</label>
        <input type="email" name="email" required><br>

        <h2>How did you hear about us?</h2>
        <p><input type=radio name="heardFrom" value="Search Engine">Search engine
            <input type=radio name="heardFrom" value="Friend">Word of mouth
            <input type=radio name="heardFrom" value="Other">Other</p>

        <h2>Would you like to receive announcements about new CDs and special offers?</h2>
        <p><input type="checkbox" name="wantsUpdates" checked>YES, I'd like that.</p>

        <p>Please contact me by:
            <select name="contactVia">
                <option value="Both" selected>Email or postal mail</option>
                <option value="Email">Email only</option>
                <option value="Postal Mail">Postal mail only</option>
            </select>
        </p>

        <input class="btn btn-info" type="submit" value="Submit">
        <button class="btn btn-warning" onclick="window.location.href='../index.jsp'"> BACK </button>
    </form>
</div>
</body>
</html>
