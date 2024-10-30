<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.io.*" %>
<html>
<head>
<title>파일로부터 데이터 읽기</title>
</head>
<body>
   <%
    BufferedReader reader = null;
    try {
      String filePath = application.getRealPath("/WEB-INF/computer.txt");
      reader = new BufferedReader(new FileReader(filePath));
      while (true) {
         String str = reader.readLine();
         if (str == null)
            break;
         out.println(str + "<br>");
      }
         
    } 
    catch (FileNotFoundException fnfe) {
      out.println("파일이 존재하지 않아요.");
    }
    catch (IOException ioe) {
      out.println("파일을 읽을 수 없아요.");
    }
    
    finally {
      try {
        reader.close();
      }
      catch (Exception e) {
      }
    }
    %>
</body>
</html>