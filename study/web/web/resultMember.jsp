<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>회원 정보</title>
</head>
<body>
    <jsp:include page="menu.jsp" />
    <div class="jumbotron" style="background-color: #755139">
        <div class="container" style="color: #F2EDD7">
            <h1 class="display-3">MEMBER INFORMATION</h1>
        </div>
    </div>
    <div class="container">
        <%
            String msg = request.getParameter("msg");
            if(msg != null){
                if(msg.equals("0")){
                    out.println("<h2 class='alert alert-danger'>회원정보가 수정되었습니다.</h2>");
                }
                else if (msg.equals("1")){
                    out.println("<h2 class='alert alert-danger'>회원가입을 축하드립니다. 로그인해주세요.</h2>");
                }
                else if (msg.equals("2")){
                    String loginId = (String)session.getAttribute("sessionId");
                    out.println("<h2 class='alert alert-danger'>"+loginId+"님 환영합니다.</h2>");
                }
                else if (msg.equals("3")){
                    out.println("<h2 class='alert alert-danger'>로그아웃 되었습니다.</h2>");
                }
            }
            else {
                out.println("<h2 class='alert alert-danger'>회원정보가 삭제되었습니다.</h2>");
            }
        %>
    </div>
</body>
</html>
