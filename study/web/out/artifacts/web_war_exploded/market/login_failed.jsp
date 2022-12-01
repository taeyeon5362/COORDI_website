<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>failed</title>
</head>
<body>
<%
    response.sendRedirect("login.jsp?error=1");
%>
</body>
</html>

