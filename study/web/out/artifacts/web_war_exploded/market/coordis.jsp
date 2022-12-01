<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
	<link rel="stylesheet"
		  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>코디 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron" style="background-color: #755139">
		<div class="container" style="color: #F2EDD7">
			<h1 class="display-3">COORDI LIST</h1>
			<p>Check out the coordination by temperature, date, and season. You'll find a good coordinator!
				You don't have to bother thinking of a new coordinator. With COORDI, you don't have to worry about it every morning</p>
		</div>
	</div>
	<div class="container">

		<div class="row" align="left">
			<%@ include file = "dbconn.jsp"%>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				String sql = "select * from coordi";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()){
			%>
			<div class="col-md-3">
				<img src="./resources/images/<%=rs.getString("c_filename")%>" style="width:100%"/>
			</div>
			<div class="col-md-6">
				<h3>[<%=rs.getString("c_category")%>]&nbsp;&nbsp;<%=rs.getString("c_name")%></h3>
				<p><%=rs.getString("c_temperature")%>℃</p>
				<p><%=rs.getString("c_description")%>
			</div>
			<div class="col-md-3">
				<a href="./coordi.jsp?id=<%=rs.getString("c_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
			</div>
			<hr>
			<%
				}

				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			%>
		</div>

	</div>
	<hr style="border:#755139 2px dashed">
	<jsp:include page="footer.jsp"/>
</body>
</html>