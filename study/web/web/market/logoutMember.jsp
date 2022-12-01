<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //모든 세션 삭제를 하면 로그아웃이 된다.
    session.invalidate();
    response.sendRedirect("resultMember.jsp?msg=3");
%>