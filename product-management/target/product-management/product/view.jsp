<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background: #f4f4f4; }
        .container { width: 700px; margin: 40px auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { margin-bottom: 20px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background: #f2f2f2; width: 180px; }
        a { color: #007bff; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>Chi tiết sản phẩm</h2>
    <table>
        <tr>
            <th>ID</th>
            <td>${product.id}</td>
        </tr>
        <tr>
            <th>Tên sản phẩm</th>
            <td>${product.name}</td>
        </tr>
        <tr>
            <th>Giá</th>
            <td>${product.price} VNĐ</td>
        </tr>
        <tr>
            <th>Mô tả</th>
            <td>${product.description}</td>
        </tr>
    </table>
    <p><a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a></p>
</div>
</body>
</html>
