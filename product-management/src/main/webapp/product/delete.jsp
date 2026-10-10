<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xác nhận xóa sản phẩm</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background-color: #f4f4f4; }
        .container { width: 500px; margin: 40px auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; color: #333; }
        .message { margin-bottom: 20px; color: #666; }
        .button-row { display: flex; gap: 10px; }
        button, .cancel { width: 100%; padding: 10px; border-radius: 4px; border: none; cursor: pointer; }
        button { background: #dc3545; color: white; }
        .cancel { background: #6c757d; color: white; text-decoration: none; display: inline-block; text-align: center; }
    </style>
</head>
<body>
<div class="container">
    <h2>Xác nhận xóa sản phẩm</h2>

    <p class="message">Bạn có chắc chắn muốn xóa sản phẩm <strong>${product.name}</strong> không?</p>

    <form action="${pageContext.request.contextPath}/products?action=delete" method="post">
        <input type="hidden" name="id" value="${product.id}">
        <div class="button-row">
            <button type="submit">Xóa</button>
            <a href="${pageContext.request.contextPath}/products" class="cancel">Hủy</a>
        </div>
    </form>
</div>
</body>
</html>
