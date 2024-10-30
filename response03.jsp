<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
       <p>이 페이지는 5초마다 새로고침 됩니다
    <%
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        response.setIntHeader("Refresh",5);
        response.sendError(404, "요청페이지를 찾을 수가 없습니다.");
    %>
    <p>문자 인코딩 : <%=response.getCharacterEncoding() %>
    <p>콘텐츠 유형 : <%=response.getContentType() %>
</body>
</html>
