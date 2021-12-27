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
    <h2>Update product</h2>

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
                <td><input type="text" name="id" id="id" value="${requestScope["product"].getId()}"></td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
                <td><input type="text" name="img" id="img" value="${requestScope["product"].getImg()}"></td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
                <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
                <td><input type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>

            </tr>

            </tbody>
        </table>

        <button type="submit" class="btn btn-warning">Edit</button>

    </form>
</div>

</body>
</html>
