<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>코디 아이디 오류</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<div class="jumbotron" style="background-color: #755139">
    <div class="container" style="color: #F2EDD7">
        <h2 class="alert alert-danger">해당 코디가 존재하지 않습니다.</h2>
    </div>
</div>
<div class="container">
    <p><%=request.getRequestURL()%>?<%=request.getQueryString()%></p>
    <p><a href="coordis.jsp" class="btn btn-secondary">코디목록&raquo;</a> </p>
</div>
</body>
</html>
