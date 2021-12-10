<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="com.java.borgeshotel.dao.*"
         import="java.util.*"
         import="com.java.borgeshotel.model.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %>
<!doctype html>
<head>
    <link rel="stylesheet" href="style/style.css">
</head>

<body>
<header>BorgesHotel
    <img src="images/img.png"/>
    <nav>
        <a class="a2" href="/ProjetoJava/ShowMenuItemListAdmin">Menu</a>
        <a class="a1"></a>
    </nav>
</header>
<div>
    <p id="m1">Menu Items</p>
    <table id="t1">
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Active</th>
            <th>Date of Launch</th>
            <th>Category</th>
            <th>Free Delivery</th>
            <th>Action</th>
        </tr>

        <c:forEach items="${x}" var="list">
            <tr>
                <td id="t11">${list.name}</td>
                <td id="t12">R$ ${list.price}</td>
                <c:if test="${list.active==true}">
                    <td id="t13">Yes</td>
                </c:if>
                <c:if test="${list.active==false}">
                    <td id="t13">No</td>
                </c:if>
                <td id="t14"><fmt:formatDate pattern="dd/MM/yyyy" value="${list.dateOflaunch}"/></td>
                <td id="t15">${list.category}</td>
                <c:if test="${list.freeDelivery==true}">
                    <td id="t16">Yes</td>
                </c:if>
                <c:if test="${list.freeDelivery==false}">
                    <td id="t16">No</td>
                </c:if>
                <td id="t17"><a href="ShowEditMenuItem?id=${list.id}">Edit</a></td>
            </tr>
        </c:forEach>

    </table>
</div>

<footer>
    Copyright &copy; 2021
</footer>

</body>
</html>