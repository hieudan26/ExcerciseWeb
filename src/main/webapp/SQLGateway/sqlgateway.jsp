<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>ASLAN TEAM</title>
  <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <style>
    body {
      background: #F9ECDB
    }

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

    .col-lg-8 {
      background-color: rgba(255, 220, 190, 0.98);
      border-radius: 3px;
      margin: auto;
      box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
    }

    table {
      margin: auto;
    }

    p {
      margin-bottom: 0.5rem;
    }
  </style>

</head>
<body>
<nav class="navbar navbar-expand-sm bg-light navbe fixed-top">
  <a class="navbar-brand brand-team" href="<c:url value = "https://hieudan26.github.io/introduceAslanTeam/#exercises"/>">ASLAN TEAM</a>
</nav>
<div class="container">
  <div class="row mb-3" style="margin-top: 80px">
    <div class="col-lg-8" >
      <div class="form-group">
        <c:if test="${sqlStatement == null}">
          <c:set var="sqlStatement" value="select * from \"User\"" />
        </c:if>

        <h1 class="text-center mt-2">The SQL Gateway</h1>
        <p class="text-center">Enter an SQL statement and click the Execute button.</p>
        <p class="text-center">Please let the query table in double apostrophe.</p>
        <p class="text-center">Because we use PostgreSQL</p>
        <p class="text-center">We apologize for this inconvenience.</p>
        <p><b>SQL statement:</b></p>
        <form action="${pageContext.request.contextPath}/SQLGatewayServlet" method="post">
          <div class="form-control">
            <textarea class="form-control" name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
          </div>

          <input class="btn btn btn-success mt-2" type="submit" value="Execute">
          <input class="btn btn btn-warning mt-2" onclick="window.location.href='../index.jsp'" type="button" value="BACK">

        </form>

        <p><b>SQL result:</b></p>
        <div class="table" style="width: 100%">
          ${sqlResult}
        </div>

      </div>
    </div>
  </div>

</div>

</body>
</html>