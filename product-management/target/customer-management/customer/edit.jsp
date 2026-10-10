<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cập nhật thông tin khách hàng</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background-color: #f4f4f4; }
        .container { width: 500px; margin: 40px auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; color: #333; }
        .message { background: #e8f5e9; color: #2e7d32; padding: 10px; border-radius: 4px; margin-bottom: 20px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: 600; }
        input { width: 100%; padding: 10px; box-sizing: border-box; }
        button { width: 100%; padding: 10px; background: #007bff; color: white; border: none; cursor: pointer; border-radius: 4px; }
        .link-back { display: inline-block; margin-top: 15px; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>Cập nhật khách hàng</h2>

    <c:if test="${not empty requestScope.message}">
        <div class="message">${requestScope.message}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/customers?action=edit" method="post">
        <input type="hidden" name="id" value="${customer.id}">

        <div class="form-group">
            <label for="name">Họ và tên</label>
            <input type="text" id="name" name="name" value="${customer.name}" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="${customer.email}" required>
        </div>

        <div class="form-group">
            <label for="address">Địa chỉ</label>
            <input type="text" id="address" name="address" value="${customer.address}" required>
        </div>

        <button type="submit">Cập nhật</button>
    </form>

    <a href="${pageContext.request.contextPath}/customers" class="link-back">Quay lại danh sách</a>
</div>
</body>
</html>
