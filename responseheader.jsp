<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>응답 HTTP 헤더에 정보 추가하기</title>
</head>
<body>
    <%
    response.setHeader("Cache-control", "use_cahce");
    response.addHeader("contentType", "text/html;charset=utf-8");
    response.setDateHeader("date", 1L);
    %>
    Cache-control : <%=response.getHeader("Cache-control")%><br>
    contentType : <%=response.getHeader("contentType") %> <br>
    date : <%=response.getHeader("date")%>
</body>
</html>