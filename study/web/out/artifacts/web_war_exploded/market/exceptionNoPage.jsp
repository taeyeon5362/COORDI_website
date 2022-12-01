<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>페이지 오류</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<div class="jumbotron" style="background-color: #755139">
    <div class="container" style="color: #F2EDD7">
        <h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다. </h2>
    </div>
</div>
<div class="container">
    <p><%=request.getRequestURL()%></p>
    <p><a href="welcome.jsp" class="btn btn-secondary">메인 페이지&raquo;</a> </p>
</div>
</body>
</html>

