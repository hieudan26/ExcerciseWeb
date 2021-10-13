<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<div>
    <a href="<c:url value ="/Chapter5"/>">Mail Chapter 5</a>
</div>
<div>
    <a href="<c:url value ="/survey"/>">Survey</a>
</div>
<div>
    <a href="<c:url value ="/Chapter7"/>">Chapter7</a>
</div>
<div>
    <a href="<c:url value ="/cartc7"/>">Cart</a>
</div>
</body>
</html>