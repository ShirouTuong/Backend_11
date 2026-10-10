<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background: #f4f4f4; }
        .container { width: 1100px; margin: 40px auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { margin-bottom: 20px; }
        .topbar { display: flex; justify-content: space-between; align-items: center; gap: 15px; margin-bottom: 20px; }
        .actions { display: flex; align-items: center; gap: 12px; }
        .search-form { display: flex; align-items: center; gap: 8px; }
        .search-form input { padding: 10px 12px; border: 1px solid #ccc; border-radius: 4px; width: 280px; }
        .search-form button, .btn-add { display: inline-block; background: #28a745; color: white; padding: 10px 15px; border: none; border-radius: 4px; text-decoration: none; cursor: pointer; }
        table { width: 100%; border-collapse: collapse; margin-top: 16px; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background: #f2f2f2; }
        a.action { margin-right: 8px; color: #007bff; text-decoration: none; }
        .danger { color: #dc3545; }
        .empty { color: #666; margin-top: 10px; }
    </style>
</head>
<body>
<div class="container">
    <div class="topbar">
        <h2>Danh sách sản phẩm</h2>
        <div class="actions">
            <form class="search-form" method="get" action="${pageContext.request.contextPath}/products">
                <input type="text" name="keyword" value="${keyword}" placeholder="Tìm kiếm theo tên sản phẩm">
                <button type="submit">Tìm kiếm</button>
            </form>
            <a href="${pageContext.request.contextPath}/products?action=create" class="btn-add">Thêm mới</a>
        </div>
    </div>

    <c:if test="${not empty keyword}">
        <p>Kết quả tìm kiếm cho: <strong>${keyword}</strong></p>
    </c:if>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Mô tả</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price} VNĐ</td>
                <td>${product.description}</td>
                <td>
                    <a class="action" href="${pageContext.request.contextPath}/products?action=view&id=${product.id}">View</a>
                    <a class="action" href="${pageContext.request.contextPath}/products?action=edit&id=${product.id}">Edit</a>
                    <a class="action danger" href="${pageContext.request.contextPath}/products?action=delete&id=${product.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <c:if test="${empty products}">
        <p class="empty">Không tìm thấy sản phẩm nào phù hợp.</p>
    </c:if>
</div>
</body>
</html>
