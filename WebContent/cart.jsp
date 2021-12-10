<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="com.java.borgeshotel.dao.*"
         import="java.util.*"
         import="com.java.borgeshotel.model.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
<header> BorgesHotel
    <img src="images/img.png" alt="image_logo"/>
    <nav>
        <a class="a2" href="/ProjetoJava/ShowMenuItemListCustomer" style="text-decoration: underline;">Menu</a>
        <a class="a1" href="/ProjetoJava/ShowCart" style="text-decoration: underline;">Cart</a>
    </nav>
</header>
<div>
    <c:if test="${removeCart==true}">
        <h4 style="color:green">
            <center>Items removed from cart Succesfully</center>
        </h4>
    </c:if>

    <h2> Cart </h2>
    <table cellpadding="4">
        <tr>
            <td width=40%><b> Name </b></td>
            <td><b> Free Delivery </b></td>
            <td><b> Price </b></td>
        </tr>
        <c:forEach items="${x}" var="list">
            <tr>
                <td>${list.name}</td>
                <c:if test="${list.freeDelivery==true}">
                    <td>Yes</td>
                </c:if>
                <c:if test="${list.freeDelivery==false}">
                    <td>No</td>
                </c:if>
                <td>${list.price}</td>
                <td><a href="RemoveCart?id=${list.id}">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
            <td>
                <center><b> Total </b></center>
            </td>

            <td>
                <b> ${total}</b>
            </td>
        </tr>
    </table>

</div>
<footer>
    Copyright &copy; 2021
</footer>
</body>
</html>