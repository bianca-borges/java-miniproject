<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="com.java.borgeshotel.dao.*"
         import="java.util.*"
         import="com.java.borgeshotel.model.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <link rel="stylesheet" href="style/style.css">
</head>

<body>
<header> BorgesHotel
    <img src="images/img.png" alt="images/image_logo"/>
    <nav>
        <a class="a2" href="/ProjetoJava/ShowMenuItemListCustomer" style="text-decoration: underline;">Menu</a>
        <a class="a1" href="/ProjetoJava/ShowCart" style="text-decoration: underline;">Cart</a>
    </nav>
</header>

<div>
    <h2>Menu Items</h2>
    <center>
        No items in cart.Use'Add to Cart'option in <a href="/ProjetoJava/ShowMenuItemListCustomer">Menu Item List</a>
    </center>
</div>

<br></br>
<br></br>
<br></br><br></br><br></br><br>
<footer>
    Copyright &copy; 2021
</footer>
</body>

</html>