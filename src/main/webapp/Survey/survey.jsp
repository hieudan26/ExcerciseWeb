<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
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
        <h1>Thanks for taking our survey!</h1>

        <p>Here is the information that you entered:</p>

        <label>Email:</label>
        <span>${user.email}</span><br>
        <label>First Name:</label>
        <span>${user.firstName}</span><br>
        <label>Last Name:</label>
        <span>${user.lastName}</span><br>
        <label>Heard From:</label>
        <span>${user.heardFrom}</span><br>
        <label>Updates:</label>
        <span>${user.wantsUpdates}</span><br>

        <c:if test="${user.wantsUpdates == 'Yes'}">
            <label>Contact Via:</label>
            <span>${user.contactVia}</span>
        </c:if>
        <br>
        <button class="btn btn-warning" onclick="window.location.href='/survey'"> BACK </button>
    </div>
    
</body>
</html>