<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background: #f4f4f4; }
        .container { width: 1000px; margin: 40px auto; background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { margin-bottom: 20px; }
        .topbar { display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; }
        .btn-add { display: inline-block; background: #28a745; color: white; padding: 10px 15px; border-radius: 4px; text-decoration: none; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background: #f2f2f2; }
        a.action { margin-right: 8px; color: #007bff; text-decoration: none; }
        .danger { color: #dc3545; }
    </style>
</head>
<body>
<div class="container">
    <div class="topbar">
        <h2>Danh sách khách hàng</h2>
        <a href="${pageContext.request.contextPath}/customers?action=create" class="btn-add">Thêm mới</a>
    </div>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Họ và tên</th>
            <th>Email</th>
            <th>Địa chỉ</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customers}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>
                    <a class="action" href="${pageContext.request.contextPath}/customers?action=view&id=${customer.id}">View</a>
                    <a class="action" href="${pageContext.request.contextPath}/customers?action=edit&id=${customer.id}">Edit</a>
                    <a class="action danger" href="${pageContext.request.contextPath}/customers?action=delete&id=${customer.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
