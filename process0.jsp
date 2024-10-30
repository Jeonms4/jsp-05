<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
    <%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    %>
    <p> 이름 : <%=name %>
    <p> 요청정보 길이 : <%=request.getContentLength() %>
    <p> 클라이언트 전송 방식 : <%=request.getMethod() %>
    <p> 요청 URI : <%=request.getRequestURI() %>
    <p> 서버 이름 : <%=request.getServerName() %>
    <p> 서버 포트 : <%=request.getServerPort() %>
</body>
</html>
