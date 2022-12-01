<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ include file="dbconn.jsp"%>
<%
    String filename = "";
    String realFolder = "/Users/gimtaeyeon/study/web/web/resources/images";
    int maxSize = 10 * 1024 * 1024; //최대 업로드 크기(10M)
    String encType = "utf-8";  //인코딩 유형

    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,
            encType, new DefaultFileRenamePolicy());

    String coordiId = multi.getParameter("coordiId");
    String name = multi.getParameter("name");
    String temperature = multi.getParameter("temperature");
    String releaseDate = multi.getParameter("releaseDate");
    String description = multi.getParameter("description");
    String category = multi.getParameter("category");

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "select * from coordi where c_id = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, coordiId);
    rs = pstmt.executeQuery();

    if(rs.next()){
        if(fileName != null) {
            sql = "UPDATE coordi SET c_name=?, c_description=?, c_category=?, releaseDate=?, c_temperature=?, c_filename=? WHERE c_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,name);
            pstmt.setString(2,description);
            pstmt.setString(3,category);
            pstmt.setString(4,releaseDate);
            pstmt.setString(5,temperature);
            pstmt.setString(6,fileName);
            pstmt.setString(7,coordiId);
            pstmt.executeUpdate();
        } else {
            sql = "UPDATE coordi SET c_name=?, c_description=?, c_category=?, c_releaseDate=?, c_temperature=? WHERE c_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,name);
            pstmt.setString(2,description);
            pstmt.setString(3,category);
            pstmt.setString(4,releaseDate);
            pstmt.setString(5,temperature);
            pstmt.setString(6,coordiId);
            pstmt.executeUpdate();
        }
    }
    if (rs != null)
        rs.close();
    if (pstmt != null)
        pstmt.close();
    if(conn != null)
        conn.close();

    response.sendRedirect("editCoordi.jsp?edit=update");
%>