    <%--
      Created by IntelliJ IDEA.
      User: WIC N
      Date: 26/12/2021
      Time: 7:58 PM
      To change this template use File | Settings | File Templates.
    --%>
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
    <div class="container">
        <h2>Create Product</h2>

        <p>
                <c:if test='${requestScope["message"] != null}'>
                <span class="message">${requestScope["message"]}</span>
            </c:if>
        </p>
        <p>
            <a href="/products">Back to customer list</a>
        </p>

        <form method="post">
            <table class="table">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Link img</th>
                    <th>Price</th>
                    <th>Producer</th>
                    <th>Description</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="text" placeholder="id" name="id"></td>
                    <td><input type="text" placeholder="Enter name" name="name"></td>
                    <td><input type="text" placeholder="Enter link Img" name="img"></td>
                    <td><input type="text" placeholder="Enter price" name="price"></td>
                    <td><input type="text" placeholder="Enter Producer" name="producer"></td>
                    <td><input type="text" placeholder="Enter description" name="description"></td>
                </tr>

                </tbody>
            </table>

            <button type="submit" class="btn btn-success">Create</button>

        </form>
    </div>

    </body>
    </html>

