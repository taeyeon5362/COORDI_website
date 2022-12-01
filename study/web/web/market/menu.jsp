<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>

<header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom" style="background-color: #F2EDD7;">
	<a href="./welcome.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-decoration-none" style="color: #755139">
		<span class="fs-5 fw-bold ">&nbsp;&nbsp;HOME</span>
	</a>
			<%
				String user_id = (String)session.getAttribute("s_id");

				Cookie lastDate = null;

				String msg = "";
				boolean found = false;
				String newValue = "" + System.currentTimeMillis();

				Cookie[] cookies = request.getCookies();

				if (cookies != null) {
					for (int i = 0; i < cookies.length; i++) {
						lastDate = cookies[i];
						if (lastDate.getName().equals("lastdateCookie")) {
							found = true;
							break;
						}
					}
				}
				if (!found) {
					msg = "처음 방문 입니다";
					lastDate = new Cookie("lastdateCookie", newValue);
					lastDate.setMaxAge(365*24*60*60);
					lastDate.setPath("/");
					response.addCookie(lastDate);
				} else {
					long conv = new Long(lastDate.getValue()).longValue();
					Date date = new Date(conv);
					String year = date.getYear() + 1900 + "년";
					String month = date.getMonth() + 1 + "월";
					String day = date.getDay() + "일";
					String hour = date.getHours() + "시";
					String minute = date.getMinutes() + "분";
					msg = " 마지막 방문 : " + year + month + day + hour + minute;
					lastDate.setValue(newValue);

					response.addCookie(lastDate);
				}
				if(user_id == null ) {
			%>
				<a class="nav-link py-2" style="color: #755139" href="<c:url value="./loginMember.jsp"/>"><span class="fs-6">SIGN IN&nbsp;&nbsp;</span></a>
				<a class="nav-link py-2" style="color: #755139" href="<c:url value="./addMember.jsp"/>"><span class="fs-6">&nbsp;&nbsp;SIGN UP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
			<%
				} else {
			%>
				<li style="padding-top: 7px; color: #755139">[<%=user_id%>님] <%=msg%></li>
				<a class="nav-link py-2" style="color: #755139" href="<c:url value="./logoutMember.jsp"/>"><span class="fs-6">&nbsp;&nbsp;SIGN OUT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
			<%
				}
			%>

	<ul class="nav nav-pills">
		<li class="nav-item"><a href="./temperature.jsp" class="nav-link" style="color: #755139">TEMPERATURE</a></li>
		<li class="nav-item"><a href="./coordis.jsp" class="nav-link" style="color: #755139">COORDI&nbsp;&nbsp;</a></li>
		<li class="nav-item"><a href="./addCoordi.jsp" class="nav-link" style="color: #755139">ADD COORDI</a></li>
		<li class="nav-item"><a href="./editCoordi.jsp?edit=update" class="nav-link" style="color: #755139">EDIT COORDI</a></li>
	</ul>
</header>

