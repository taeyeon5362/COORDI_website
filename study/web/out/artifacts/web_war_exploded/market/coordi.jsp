<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page errorPage="exceptionNoCoordiId.jsp" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>코디 정보</title>
</head>
<body>
    <jsp:include page="menu.jsp" />
    <div class="jumbotron" style="background-color: #755139">
        <div class="container" style="color: #F2EDD7">
            <h1 class="display-3">COORDI INFORMATION</h1>
            <p>Check out the coordination details</p>
        </div>
    </div>
    <%@ include file="dbconn.jsp"%>
    <%
        String coordiId = request.getParameter("id");

        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from coordi where c_id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, coordiId);
        rs = pstmt.executeQuery();
        if(rs.next()){
    %>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <img src="./resources/images/<%=rs.getString("c_filename")%>" style="width: 100%">
            </div>
            <div class="col-md-6">
                <h3><%=rs.getString("c_name")%></h3>
                <p><%=rs.getString("c_description")%></p>
                <p> <b>코드 : </b> <span class="badge badge-primary"><%=rs.getString("c_id")%></span></p>
                <p> <b>온도 : </b> <%=rs.getString("c_temperature")%>℃
                <p> <b>날짜 : </b> <%=rs.getString("c_releaseDate")%></p>
                    <a href="./coordis.jsp" class="btn btn-secondary">코디목록 &raquo;</a>
                </p>
            </div>
            <%
                }
                if(rs != null)
                    rs.close();
                if(pstmt != null)
                    pstmt.close();
                if(conn != null)
                    conn.close();
            %>
        </div>
        <hr>
    </div>
    <hr style="border:#755139 2px dashed">
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
