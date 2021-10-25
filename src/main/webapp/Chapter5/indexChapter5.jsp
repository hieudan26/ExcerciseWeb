<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #F6E9D9;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<jsp:include page="../header.jsp" />
<body style="margin: 0 auto">
<br />
    <div style="margin-top: 190px;">
        <div class="slogan">
            <h1 style="align-self: center;">Join our email list</h1>
        </div>
        <div>
            <p>To join our email list, enter your name and
                email address below.</p>
        </div>
        <p><i>${message}</i></p>
        <jsp:useBean id="user" scope="session" class="Murach.Chapter7.business.UserEntity"/>
        <form action=<c:url value="/emailList"/> method="post">
            <input type="hidden" name="action" value="add">
            <label class="pad_top">Email:</label>
            <input type="email" name="email"
                   value="<jsp:getProperty name="user" property="email"/>"><br>
            <label class="pad_top">First Name:</label>
            <input type="text" name="firstname"
                   value="<jsp:getProperty name="user" property="firstname"/>"><br>
            <label class="pad_top">Last Name:</label>
            <input type="text" name="lastname"
                   value="<jsp:getProperty name="user" property="lastname"/>"><br>
            <label>&nbsp;</label>
            <input class="btn btn-info" type="submit" value="Join Now" class="margin_left">

        </form>
        <button style="    margin-left: 8px;
    margin-top: 5px;" class="btn btn-warning" onclick="window.location.href='/'"> BACK </button>
        <c:import url="footer/footer.jsp"/>
    </div>
</body>
</html>