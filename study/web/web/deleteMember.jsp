<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%
    String sessionId = (String)session.getAttribute("sessionId");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 삭제</title>
</head>
<body>
    <!-- DB접속 -->
    <sql:setDataSource var="dataSource"
                       url="jdbc:mysql://localhost:3306/webmarket?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
                       driver="com.mysql.jdbc.Driver"
                       user="root" password="ty5355362" />
    <!-- 쿼리 실행부분 -->
    <sql:update dataSource="${dataSource}" var="resultSet">
        delete from members where id = ?
        <sql:param value="<%= sessionId %>" />
    </sql:update>
    <c:if test="${resultSet >= 1}">
        <c:import url="logoutMember.jsp" />
        <c:redirect url="resultMember.jsp" />
    </c:if>
</body>
</html>