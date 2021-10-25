<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
<%--    <link rel="stylesheet" href="<c:url value="/styles/main.css"/>"/>--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<jsp:include page="../header.jsp" />
<body>

<h1>404 Error</h1>
<p>The server was not able to find the file you requested.</p>
<p>To continue, click the Back button.</p>
<button class="btn btn-warning" onclick="window.location.href='/'"> BACK </button>
</body>
</html>