<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<form method="post">
    <div class="container">
        <br>
        <div><a href="/products" class="btn btn-success">Back to product list </a></div>
        <h3>Product information</h3>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>Producer</th>
                <th>Img</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items='${requestScope["searchProducts"]}' var="product">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.producer}</td>
                    <td>${product.description}</td>
                    <td> <img src="${product.img}" class="img-responsive margin" style="width:25%; height: 80px"
                                                             alt="Image"> </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>
</form>
</body>
</html>


