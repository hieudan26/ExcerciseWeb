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

    <h1>Cookies</h1>

    <p>All persistent cookies have been removed from this browser.</p>

    <p><a href="download?action=viewAlbums">View list of albums</a></p>

    <p><a href="?action=viewCookies">View all cookies</a></p>

</div>
</body>
</html>