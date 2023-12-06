<%-- 
    Document   : ViewCart
    Created on : Jun 17, 2023, 4:05:59 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.shopping.Cart"%>
<%@page import="sample.shopping.Flower"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Cart</title>
        <style>
            
                       a{
                  border: 1px solid #ccc;         
                  padding: 10px;
                  text-decoration: none;
                                   border-radius: 5px;
                  background-color: #009999;
                  color: white;
                  margin-bottom: 20px;
              }
              
            table {
  width: 100%;
  border-collapse: collapse;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
  font-weight: bold;
}

tr:hover {
  background-color: #f5f5f5;
}   


.cart-table-button{
                      padding:8px;
                  border-radius: 5px;
                  background-color: #009999;
                  color: white;
}

.cart-table-input{
 border: none;
}
            
            
        </style>
    </head>
    <body class="container">
        <h1 class="go1">You have chosen these items: </h1>
        <c:choose>
        <c:when test="${sessionScope.CART != null}">

            <c:if test="${not empty sessionScope.CART}">
        <table border="1" class="gogo">
            <thead>
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Edit</th>
                    <th>Remove</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cart" varStatus="counter" items="${sessionScope.CART.getCart()}">
                            <c:set var="flower" value="${cart.value}" > </c:set>
                            <c:set var="sum" value="${sum + flower.price * flower.quantity}"></c:set>
            <form action="MainController" method="POST">
                <tr>
                    <td>${counter.count}</td>
                    <td> <input class="cart-table-input" type="text" name="id" value="${flower.id}" readonly="">
                       </td> 
                    <td>${flower.name}</td>
                    <td>${flower.price}</td>
                    <td> <input class="cart-table-input" type="number" name="Quantity" value="${flower.quantity}" min="1" required="">
                        </td>
                    <!--Edit here-->
                    <td>
                        <input class="cart-table-button" type="submit" name="action" value="Edit">
                    </td>
                    <!-- Remove here-->
                    <td>
                        <input class="cart-table-button" type="submit" name="action" value="Remove">
                    </td>
                    <td>${flower.price * flower.quantity}</td>
                </tr>
            </form>
            </c:forEach>
            </tbody>
        </table>
            <h1 class="go1">Total: ${sum} $</h1>
            </c:if>
            </c:when>
            <c:otherwise> 
                        <h1 class="go1">You still haven't decided on products. Please select products!!!</h1></br>
            </c:otherwise>
            </c:choose>
        <a href="shopping.html" class="go1">Add more</a>
        <a href="login.html" class="go1">Return to login</a>
    </body>
</html>