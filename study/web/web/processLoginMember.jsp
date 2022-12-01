<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="dbconn.jsp"%>

<html>
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<body>
    <%
        String user_id = request.getParameter("user_id");
        String user_pwd = request.getParameter("user_pwd");


        ResultSet rs = null;

        try {
          String sql = "select * from member where id=?";
          PreparedStatement pstmt = conn.prepareStatement(sql);
          pstmt.setString(1, user_id);
          rs = pstmt.executeQuery();

          if(rs.next()){
            String dbId = rs.getString("id");
            String dbPw = rs.getString("password");

            if(user_id.equals(dbId)){
                if(user_pwd.equals(dbPw)){
                    session.setAttribute("s_id", user_id);
                    response.sendRedirect("./welcome.jsp");
                } else{
                    response.sendRedirect("./loginMember.jsp");
                }
            } else {
              response.sendRedirect("./loginMember.jsp");
            }
          } else {
            response.sendRedirect("./loginMember.jsp");
          }
        } catch (Exception e) {
          e.printStackTrace();
        }

    %>
</body>
</html>
