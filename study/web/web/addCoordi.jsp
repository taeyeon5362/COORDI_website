<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dto.Coordi" %>
<%@ page import="dao.CoordiRepository" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script type="text/javascript" src="resources/js/validation.js"></script>
    <title>COORDI ADDITION</title>
</head>
<body>
    <fmt:setLocale value='<%= request.getParameter("language")%>' />
    <fmt:bundle basename="bundle.coordi">
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron" style="background-color: #755139">
        <div class="container" style="color: #F2EDD7">
            <h1 class="display-3">COORDI ADDITION</h1>
            <p>Register your desired coordination.
            <p>Use the "C####" form for ID /  Name At least 5 characters / Use the lowest temperature, the highest temperature. / Write the date in the form '####/##/##'
        </div>
    </div>
    <div class="container">
        <div class="text-right">
            <a href="?language=ko" >Korean</a>&nbsp;|&nbsp;<a href="?language=en">English</a>
            <a href="logout.jsp" class="btn btn-sm btn-success pull-reight">&nbsp;logout</a>
        </div>
        <form name="newCoordi" action="processAddCoordi.jsp" enctype="multipart/form-data" class="form-horizontal" method="post">
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="coordiId"/></label>
                <div class="col-sm-3">
                    <input type="text" id="coordiId" name="coordiId" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="name"/></label>
                <div class="col-sm-3">
                    <input type="text" id="name" name="name" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="temperature"/></label>
                <div class="col-sm-3">
                    <input type="text" id="temperature" name="temperature" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="releaseDate"/></label>
                <div class="col-sm-3">
                    <input type="text" name="releaseDate" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="description"/></label>
                <div class="col-sm-5">
                    <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="category"/></label>
                <div class="col-sm-5">
                    <input type="radio" name="category" value="Spring"><fmt:message key="category_Spring"/>&nbsp;
                    <input type="radio" name="category" value="Summer"> <fmt:message key="category_Summer"/>&nbsp;
                    <input type="radio" name="category" value="Autumn"> <fmt:message key="category_Autumn"/>&nbsp;
                    <input type="radio" name="category" value="Winter"> <fmt:message key="category_Winter"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="CoordiImage"/></label>
                <div class="col-sm-5">
                    <input type="file" name="coordiImage" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckAddCoordi()">
                </div>
            </div>
        </form>
    </div>
    </fmt:bundle>
    <hr style="border:#755139 2px dashed">
 <jsp:include page="footer.jsp"/>
</body>
</html>
