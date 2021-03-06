<%--
  Created by IntelliJ IDEA.
  User: WIC N
  Date: 26/12/2021
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: WIC N
  Date: 24/12/2021
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <title>Bootstrap Theme Simply Me</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>

        body {
            font: 20px Montserrat, sans-serif;
            line-height: 1.8;
            color: #f5f6f7;
        }

        p {
            font-size: 16px;
        }

        .margin {
            margin-bottom: 45px;
        }


        .bg-3 {
            background-color: #ffffff; /* White */
            color: #555555;
        }

        .bg-4 {
            background-color: #2f2f2f; /* Black Gray */
            color: #fff;
        }


        .container-fluid {
            padding-top: 70px;
            padding-bottom: 70px;
        }


        .navbar {
            background-color: #d70018;
            padding-top: 15px;
            padding-bottom: 15px;
            border: 0;
            border-radius: 0;
            margin-bottom: 0;
            font-size: 14px;
            letter-spacing: 5px;

        }

        #body-img {
            width: 100%;
            height: 420px;
        }

        #body-img:hover {
            opacity: 0.6;
        }


    </style>
</head>
<body>

<!-- Navbar -->

<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" style="color: #ffffff; font-size: 24px">CELLPHONES</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/products?action=search&id=${product.getId()}" style="color: #ffffff">SEARCH</a></li>
                <li><a href="#" style="color: #ffffff">CART</a></li>
                <c:if test="${sessionScope.account == null}">
                    <li><a href="/logins" style="color: #ffffff">LOGIN/SIGNUP</a></li>
                </c:if>
                <c:if test="${sessionScope.account != null}">
                    <li>
                        <a href="#" style="color: #ffffff; text-decoration: none; text-transform: uppercase">
                            <div style="display: inline-block">
                                <img height="20px" width="20px" src="${sessionScope.account.accimg}" alt="">
                            </div>
                            <div style="display: inline-block">
                                    ${sessionScope.account.accname}
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/logouts" style="color: #ffffff">LOG OUT</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<c:if test="${sessionScope.account.isuser == 1}">
    <div>
        <h2 style="text-transform: uppercase; text-align: center; color: black">
            Welcome ${sessionScope.account.accname}</h2>
    </div>
</c:if>


<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">
    <c:if test="${sessionScope.account.isadmin == 1}">
        <div><a href="/products?action=create" class="btn btn-success">Create New Product</a>
        </div>
    </c:if>

    <br>
    <div class="row">
        <c:forEach items='${requestScope["products"]}' var="product">
            <div class="col-sm-4">

                <a href="/products?action=view&id=${product.getId()}"> <img src="${product.img}"
                                                                            class="img-responsive margin" alt="Image"
                                                                            id="body-img">
                </a>
                <p>${product.name} (${product.description})</p>
                <p>$ ${product.price}</p>
                <p>${product.producer}</p>

                <c:if test="${sessionScope.account.isadmin == 1}">
                    <a href="/products?action=edit&id=${product.getId()}" class="btn btn-warning">Edit</a>
                    <a href="/products?action=delete&id=${product.getId()}" class="btn btn-danger">Delete</a>
                </c:if>
                <br>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
    <p>Bootstrap Theme Made By <a href="https://www.w3schools.com">www.w3schools.com</a></p>
</footer>

</body>
</html>


