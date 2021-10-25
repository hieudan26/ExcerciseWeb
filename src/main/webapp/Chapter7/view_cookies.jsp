<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

    <p>Here's a table with all of the cookies that this
        browser is sending to the current server.</p>


    <table>
        <tr>
            <th>Name</th>
            <th>Value</th>
        </tr>
        <c:forEach var="c" items="${cookie}">
            <tr>
                <td>${c.value.name}</td>
                <td>${c.value.value}</td>
            </tr>
        </c:forEach>
    </table>

    <p><a class="btn btn-info" href="download?action=viewAlbums">View list of albums</a></p>

    <p><a class="btn btn-info" href="download?action=deleteCookies">Delete all persistent cookies</a></p>

</div>
</body>
</html>