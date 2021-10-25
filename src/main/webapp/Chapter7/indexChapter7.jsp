<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
<%--    <link rel="stylesheet" href="<c:url value="/styles/main.css"/>"/>--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .img-fluid {
            border-radius: 10px;
            filter: brightness(80%);
            height: 70%;
        }
        body {
            text-align: center;
        }
        .fa {
            font-size: 2rem;
        }
        .intro {
            margin-bottom: 70px;
        }
        body {
            background-color: #F6E9D9;
        }
    </style>
</head>
<jsp:include page="../header.jsp" />
<body>
<input class="btn btn btn-warning" onclick="window.location.href='/' +
 ''" type="button" value="BACK">
<section class="article-list">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">HELLO WORLD</h2>
            <c:if test="${cookie.firstNameCookie.value != null}">
                <p class="text-center">Welcome back, <c:out value='${cookie.firstNameCookie.value}' default="You haven't login"/></p>
            </c:if>
        </div>
        <div class="row articles">
            <div class="col-sm-6 col-md-4 col-lg-3 item">
                <h3 class="name">86 (the band) - True Life Songs and Pictures</h3>
                <p class="description"></p>
                <a class="action" href="<c:url value ='download?action=checkUser&amp;productCode=8601'/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item">
                <h3 class="name">Paddlefoot - The First CD</h3>
                <a class="action" href="<c:url value ='download?action=checkUser&amp;productCode=pf01'/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item">
                <h3 class="name">Paddlefoot - The Second CD</h3>
                <a class="action" href="<c:url value ='/download?action=checkUser&amp;productCode=pf02'/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 item">
                <h3 class="name">Joe Rut - Genuine Wood Grained Finish</h3>
                <a class="action" href="<c:url value ='/download?action=checkUser&amp;productCode=jr01'/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
    </div>
</section>
<%--<h1>List of albums</h1>--%>
<%--<c:if test="${cookie.firstNameCookie.value != null}">--%>
<%--    <p>Welcome back, <c:out value='${cookie.firstNameCookie.value}' default="You haven't login"/></p>--%>
<%--</c:if>--%>


<%--<p>--%>
<%--<a href="download?action=checkUser&amp;productCode=8601">--%>
<%--    86 (the band) - True Life Songs and Pictures--%>
<%--</a><br>--%>

<%--<a href="download?action=checkUser&amp;productCode=pf01">--%>
<%--    Paddlefoot - The First CD--%>
<%--</a><br>--%>

<%--<a href="download?action=checkUser&amp;productCode=pf02">--%>
<%--    Paddlefoot - The Second CD--%>
<%--</a><br>--%>

<%--<a href="download?action=checkUser&amp;productCode=jr01">--%>
<%--    Joe Rut - Genuine Wood Grained Finish--%>
<%--</a>--%>
<%--</p>--%>

</body>
</html>