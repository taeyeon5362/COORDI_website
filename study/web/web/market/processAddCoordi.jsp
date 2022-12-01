<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dto.Coordi"%>
<%@ page import="dao.CoordiRepository"%>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import = "java.sql.*" %>
<%@ include file="dbconn.jsp"%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");


        String filename = "";
        String realFolder = "/Users/gimtaeyeon/study/web/web/market/resources/images";
        int maxSize = 10 * 1024 * 1024; //최대 업로드 크기(10M)
        String encType = "utf-8";  //인코딩 유형

        MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,
                encType, new DefaultFileRenamePolicy());

        String coordiId = multi.getParameter("coordiId");
        String name = multi.getParameter("name");
        String description = multi.getParameter("description");
        String category = multi.getParameter("category");
        String releaseDate = multi.getParameter("releaseDate");
        String temperature = multi.getParameter("temperature");


        Enumeration files = multi.getFileNames();
        String fname = (String) files.nextElement();
        String fileName = multi.getFilesystemName(fname);

        PreparedStatement pstmt = null;

        String sql = "insert into coordi values(?,?,?,?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,coordiId);
        pstmt.setString(2,name);
        pstmt.setString(3,description);
        pstmt.setString(4,category);
        pstmt.setString(5,releaseDate);
        pstmt.setString(6,temperature);
        pstmt.setString(7,fileName);
        pstmt.executeUpdate();

        if(pstmt != null)
            pstmt.close();
        if(conn != null)
            conn.close();

        CoordiRepository dao= CoordiRepository.getInstance();

        Coordi newCoordi = new Coordi ();
        newCoordi.setCoordiId(coordiId);
        newCoordi.setName(name);
        newCoordi.setTemperature(temperature);
        newCoordi.setReleaseDate(releaseDate);
        newCoordi.setDescription(description);
        newCoordi.setFilename(fileName);
        newCoordi.setCategory(category);

        dao.addCoordi(newCoordi);

        response.sendRedirect("coordis.jsp");

    %>
</body>
</html>
