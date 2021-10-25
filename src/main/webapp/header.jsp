<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 10/24/2021
  Time: 7:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
    <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .navbe {
            box-shadow: 7px 3px 14px black;
        }

        .brand-team {
            margin-left: 30px;
            color: black;
            font-weight: 500;
        }

        .brand-team:hover {
            color: black;
            border-bottom: 2px solid black;
        }
    </style>
</head>
<header style="margin-bottom: 120px;">
    <nav class="navbar navbar-expand-sm bg-light navbe fixed-top">
        <a class="navbar-brand brand-team" href="<c:url value = "https://hieudan26.github.io/introduceAslanTeam/#exercises"/>">ASLAN TEAM</a>
    </nav>
</header>
</html>
