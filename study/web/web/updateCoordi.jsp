<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "java.sql.*" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>코디 수정</title>
</head>
<body>
    <fmt:setLocale value='<%= request.getParameter("language")%>' />
    <fmt:bundle basename="bundle.coordi" >
    <jsp:include page="menu.jsp" />

        <div class="jumbotron" style="background-color: #755139">
            <div class="container" style="color: #F2EDD7">
                <h1 class="display-3">COORDI EDIT</h1>
                <p>Check out the coordination by temperature, date, and season. You'll find a good coordinator!
                    You don't have to bother thinking of a new coordinator. With COORDI, you don't have to worry about it every morning</p>
            </div>
        </div>
    <%@ include file="dbconn.jsp" %>
    <%
        String coordiId = request.getParameter("id");

        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from coordi where c_id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, coordiId);
        rs = pstmt.executeQuery();
        if (rs.next()){
    %>
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="./resources/images/<%=rs.getString("c_filename")%>" alt="image" style="width:100%"/>
            </div>
            <div class="col-md-7">
                <form name="newCoordi" action="processUpdateCoordi.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label class="col-sm-2"><fmt:message key="coordiId"/></label>
                        <div class="col-sm-3">
                            <input type="text" id="coordiId" name="coordiId" class="form-control" value="<%=rs.getString("c_id")%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2"><fmt:message key="name"/></label>
                        <div class="col-sm-3">
                            <input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("c_name")%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2"><fmt:message key="temperature"/></label>
                        <div class="col-sm-3">
                            <input type="text" name="temperature" class="form-control" value="<%=rs.getString("c_temperature")%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2"><fmt:message key="releaseDate"/></label>
                        <div class="col-sm-3">
                            <input type="text" name="releaseDate" class="form-control" value="<%=rs.getString("c_releaseDate")%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2"><fmt:message key="description"/></label>
                        <div class="col-sm-5">
                            <textarea name="description" cols="50" rows="2" class="form-control" value=<%=rs.getString("c_description")%>></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2"><fmt:message key="category"/></label>
                        <div class="col-sm-5">
                            <input type="radio" name="category" value="Spring"><fmt:message key="category_Spring"/>&nbsp;
                            <input type="radio" name="category" value="Summer"><fmt:message key="category_Summer"/>&nbsp;
                            <input type="radio" name="category" value="Autumn"><fmt:message key="category_Autumn"/>&nbsp;
                            <input type="radio" name="category" value="Winter"><fmt:message key="category_Winter"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2"><fmt:message key="CoordiImage"/></label>
                        <div class="col-sm-5">
                            <input type="file" name="fileName" class="form-control" value="<%=rs.getString("c_filename")%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" class="btn btn-primary" value="<fmt:message key="button"/>">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
        <%
            }

            if (rs != null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if(conn != null)
                conn.close();
        %>
    </fmt:bundle>
    <hr style="border:grey 1px dashed">
    <jsp:include page="footer.jsp"/>
</body>
</html>
