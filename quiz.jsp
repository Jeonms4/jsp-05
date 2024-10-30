<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
<p> 내장 객체 out를 이용하여 1과 10사이의 짝수 출력
    <%
    for(int cnt =1; cnt < 10; cnt++) {
    	if(cnt%2 == 0)
    		out.println(cnt + "<br>");
    }
    %>
    <p> 내장 객체 out를 이용하여 1과 10사이의 짝수 출력
    <%! int cnt = 0; %>
    <%
        for(int cnt =1; cnt < 10; cnt++) {
         	if(cnt %2 == 0) %>
    	      <%= cnt %>
    
    <% } %>
</body>
</html>