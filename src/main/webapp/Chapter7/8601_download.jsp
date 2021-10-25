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

        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<jsp:include page="../header.jsp" />
<body style="margin: 0 auto">
<div>

    <h1>Downloads</h1>

    <h2>86 (the band) - True Life Songs and Pictures</h2>

    <table>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        <tr>
            <td>You Are a Star</td>
            <td><a href="<c:url value="https://zingmp3.vn/embed/song/ZO6WC06B?start=true"/>">MP3</a></td>
        </tr>
        <tr>
            <td>Don't Make No Difference</td>
            <td><a href="/musicStore/sound/${productCode}/no_difference.mp3">MP3</a></td>
        </tr>
    </table>

    <p><a href="?action=viewAlbums">View list of albums</a></p>

    <p><a href="?action=viewCookies">View all cookies</a></p>

</div>
</body>
</html>