<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ASLAN TEAM</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <style>
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
<body>
<h1>Your cart</h1>

<table>
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
    <th></th>
  </tr>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <c:forEach var="item" items="${cart.items}">
    <tr>
      <td>
        <form action="" method="post">
          <input type="hidden" name="productCode"
                 value="<c:out value='${item.product.code}'/>">
          <input type=text name="quantity"
                 value="<c:out value='${item.quantity}'/>" id="quantity">
          <input type="submit" class="btn-info" value="Update">
        </form>
      </td>
      <td><c:out value='${item.product.name}'/></td>
      <td>${item.product.price} $</td>
      <td>${item.totalCurrencyFormat}</td>
      <td>
        <form action="" method="post">
          <input type="hidden" name="productCode"
                 value="<c:out value='${item.product.code}'/>">
          <input type="hidden" name="quantity"
                 value="0">
          <input type="submit" class="btn-info" value="Remove Item">
        </form>
      </td>
    </tr>
  </c:forEach>
</table>

<p><b>To change the quantity</b>, enter the new quantity
  and click on the Update button.</p>

<form action="/cartc7" method="post">
  <input type="hidden" name="action" value="shop">
  <input type="submit" class="btn-info" value="Continue Shopping">
</form>
<br>
<form action="/cartc7" method="post">
  <input type="hidden" name="action" value="checkout">
  <input type="submit" class="btn-info" value="Checkout">
</form>
<br>
<button class="btn btn-warning" onclick="window.location.href='/cartc7'"> BACK </button>

</body>
</html>