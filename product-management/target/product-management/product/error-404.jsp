<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>404 Not Found</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background: #f4f4f4; }
        .container { width: 500px; margin: 80px auto; background: white; border-radius: 8px; padding: 40px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        h2 { color: #dc3545; }
        a { color: #007bff; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>Không tìm thấy sản phẩm</h2>
    <p>Sản phẩm bạn yêu cầu không tồn tại hoặc đã bị xóa.</p>
    <a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a>
</div>
</body>
</html>
