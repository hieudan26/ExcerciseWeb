<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>ASLAN TEAM</title>
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
<body>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<div>--%>
<%--    <a href="<c:url value ="/Chapter5"/>">Mail Chapter 5</a>--%>
<%--</div>--%>
<%--<div>--%>
<%--    <a href="<c:url value ="/survey"/>">Survey</a>--%>
<%--</div>--%>
<%--<div>--%>
<%--    <a href="<c:url value ="/Chapter7"/>">Chapter7</a>--%>
<%--</div>--%>
<%--<div>--%>
<%--    <a href="<c:url value ="/cartc7"/>">Cart</a>--%>
<%--</div>--%>
<jsp:include page="header.jsp" />
<section class="article-list">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">HELLO WORLD</h2>
            <p class="text-center">From [Aslan Team] with love. </p>
        </div>
        <div class="row articles">
            <div class="col-sm-6 col-md-5 col-lg-3 item">
<%--                <a href="#"><img class="img-fluid" src="<c:url value="./assets/mail.png"/>"></a>--%>
                <h3 class="name">Mail Chapter 5</h3>
                <p class="description"></p>
                <a class="action" href="<c:url value ="/Chapter5"/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-2 item">
<%--                <a href="#">--%>
<%--                    <img class="img-fluid" src="./assets/survey.jpg">--%>
<%--                </a>--%>
                <h3 class="name">Survey</h3>
                <a class="action" href="<c:url value ="/survey"/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-2 item">
<%--                <a href="#">--%>
<%--                    <img class="img-fluid" src="./assets/chapter07.jpg">--%>
<%--                </a>--%>
                <h3 class="name">Chapter 7</h3>
                <a class="action" href="<c:url value ="/Chapter7"/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-2 item">
<%--                <a href="#"><img class="img-fluid" src="./assets/cart.jpg"></a>--%>
                <h3 class="name">Cart</h3>
                <a class="action" href="<c:url value ="/cartc7"/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-2 item">
<%--                <a href="#"><img class="img-fluid" src="./assets/cart.jpg"></a>--%>
                <h3 class="name">SQLGateway</h3>
                <a class="action" href="<c:url value ="./SQLGateway/sqlgateway.jsp"/>">
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
    </div>
</section>
</body>
</html>