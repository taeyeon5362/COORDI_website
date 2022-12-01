<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>TEMPERATURE</title>
</head>
<body>
    <fmt:setLocale value='<%= request.getParameter("language")%>' />
    <fmt:bundle basename="bundle.coordi" >
        <%@ include file="menu.jsp" %>

        <div class="jumbotron" style="background-color: #755139">
        <div class="container" style="color: #F2EDD7">
            <h1 class="display-3">TEMPERATURE COORDI</h1>
            <p>Check and wear clothes suitable for each temperature. You can look for a new coordinator if you want.
            Tap the 'COORDI' tab to see the new coordination! You can see the new coordination. You'll find a good coordinator!
            You don't have to bother thinking of a new coordinator. With COORDI, you don't have to worry about it every morning</p>
            </div>
        </div>
        <div class="container" align="center">
            <div class="text-right">
                <a href="?language=ko" >Korean</a>&nbsp;|&nbsp;<a href="?language=en">English</a>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <img class="bd-placeholder-img rounded-circle" width="300" height="300" src="./resources/temperature/twentyEight.JPG">
                    <h2 class="fw-normal">28℃ ↑</h2>
                    <p><fmt:message key="twentyEight"/></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="bd-placeholder-img rounded-circle" width="300" height="300" src="./resources/temperature/twentySeven.png">
                    <h2 class="fw-normal">27℃~23℃</h2>
                    <p><fmt:message key="twentySeven"/></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="bd-placeholder-img rounded-circle" width="300" height="300" src="./resources/temperature/twentyTwo.jpg">
                    <h2 class="fw-normal">22℃~20℃</h2>
                    <p><fmt:message key="twentyTwo"/></p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
            <br>
            <div class="row">
                <div class="col-lg-4">
                    <img class="bd-placeholder-img rounded-circle" width="300" height="300" src="./resources/temperature/nineteen.jpg">
                    <h2 class="fw-normal">19℃~17℃</h2>
                    <p><fmt:message key="nineteen"/></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="bd-placeholder-img rounded-circle" width="300" height="300" src="./resources/temperature/sixteen.jpg">
                    <h2 class="fw-normal">16℃~12℃</h2>
                    <p><fmt:message key="sixteen"/></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="bd-placeholder-img rounded-circle" width="300" height="300" src="./resources/temperature/eleven.jpg">
                    <h2 class="fw-normal">11℃~9℃</h2>
                    <p><fmt:message key="eleven"/></p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
            <br>
            <div class="row">
                <div class="col-lg-4">
                    <img class="bd-placeholder-img rounded-circle" width="300" height="300" src="./resources/temperature/eight.jpg">
                    <h2 class="fw-normal">8℃~5℃</h2>
                    <p><fmt:message key="eight"/></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="bd-placeholder-img rounded-circle" width="300" height="300" src="./resources/temperature/four.jpg">
                    <h2 class="fw-normal">4℃ ↓</h2>
                    <p><fmt:message key="four"/></p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
        </div>
    </fmt:bundle>
    <hr style="border:#755139 2px dashed">
    <jsp:include page="footer.jsp"/>
</body>
</html>
