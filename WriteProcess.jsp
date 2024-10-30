<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>파일에 글쓴 결과를 읽어서 브라우저에 보이기</title>
</head>
<body>
    <%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("NAME");
    String title = request.getParameter("TITLE");
    String content = request.getParameter("CONTENT");
    PrintWriter writer = null;
    try {
      String filePath = application.getRealPath("/WEB-INF/computerwrite.txt");
      writer = new PrintWriter(filePath);
      writer.printf("제목 : %s %n", title);
      writer.printf("글쓴이 : %s %n", name);
      writer.println(content);
      out.println("저장되었습니다.");
    } 
    catch (IOException ioe) {
      out.println("파일에 데이터를 쓸 수 없아요.");
    }
    
    finally {
      try {
        writer.close();
      }
      catch (Exception e) {
      }
    }
    %>
</body>
</html>
