<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>로그인</title>
</head>
<body>
    <jsp:include page="menu.jsp" />
    <div class="jumbotron" style="background-color: #755139">
        <div class="container" style="color: #F2EDD7">
            <h1 class="display-3">SIGN IN</h1>
        </div>
    </div>
    <%! int cnt = 0; %>
    <div class="container" align="center">
        <div class="col-md-5 col-md-offset-4">
            <h3 class="form-signin-headding">Please sign in</h3>

            <form class="form-signin" action="./processLoginMember.jsp" method="POST">
                <div class="form-group">
                    <label for="inputUserName" class="sr-only">User Name</label>
                    <input type="text" class="form-control" placeholder="아이디" name="user_id" required autofocus/>
                </div>

                <div class="form-group">
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" class="form-control" placeholder="비밀번호" name="user_pwd" required/>
                </div>
                <button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
            </form>
        </div>
    </div>
</body>
</html>