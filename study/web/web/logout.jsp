<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WebMarket</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("addCoordi.jsp");
%>
</body>
</html>
