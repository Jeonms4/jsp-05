<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
    <form action="request_process.jsp" method="post">  // get방식이면 보임
        <p> 아이디: <input type="text" name="id">
        <p> 비밀번호: <input type="text" name="password">
        <p> <input type="submit" value="전송">
    </form>
</body>
</html>