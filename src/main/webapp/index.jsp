<%--
  Created by IntelliJ IDEA.
  User: t
  Date: 9/27/2021
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  </head>
  <body>
  <div class="container mt-5 d-flex justify-content-center">
    <div class="card">
      <div class="card-header">
        <h1>Product Discount Calculator</h1>
      </div>
      <div class="card card-body">
        <form method="get" action="/ProductServlet">
          <div class="mb-3">
            <label class="form-label">Product description</label>
            <input name="description" type="text" class="form-control">
          </div>
          <div class="mb-3">
            <label class="form-label">List price</label>
            <input name="price" type="text" class="form-control">
          </div>
          <div class="mb-3">
            <label class="form-label">Discount Percent</label>
            <input name="discount" type="text" class="form-control">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
  </body>
</html>
