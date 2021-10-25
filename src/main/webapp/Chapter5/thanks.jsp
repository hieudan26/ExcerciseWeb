<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
<%--    <link rel="stylesheet" href="<c:url value="/styles/main.css"/>"/>--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
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
<body style="margin: 0 auto;">
<div style="margin-top: 120px;">
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>
    <label>First Name:</label>
    <span>${user.firstname}</span><br>
    <label>Last Name:</label>
    <span>${user.lastname}</span><br>

    <p>This email address was added to our list on ${requestScope.currentDate}</p>
    <c:forEach items="${sessionScope.users}" var="user" varStatus="loop">
        <c:choose>
            <c:when test="${loop.index == 0}">
            <p>The 1st address on our list is ${user.email}<br></p>
            </c:when>
            <c:when test="${loop.index  == 1}">
                <p>The 2nd address on our list is ${user.email}<br></p>
            </c:when>
            <c:when test="${loop.index  == 2}">
                <p>The 3rd address on our list is ${user.email}<br></p>
            </c:when>
            <c:otherwise>
                <p>The ${loop.index}th address on our list is ${user.email}<br></p>
            </c:otherwise>
        </c:choose>
    </c:forEach>


    <p>For customer service, contact ${initParam.custServEmail}</p>

    <p>To enter another email address, click on the Back
        button in your browser or the Return button shown
        below.</p>

    <form action="${pageContext.request.contextPath}/Chapter5" method="get">
        <%--    <input type="hidden" name="action" value="join">--%>
        <input class="btn btn-info" type="submit" value="Return">
            <button class="btn btn-warning"> BACK </button>
        <%--    <input type="button" value="Back" onclick="window.location.href='indexChapter5.jsp'">--%>
    </form>
    <c:import url="footer/footer.jsp"/>
</div>
</body>
</html>