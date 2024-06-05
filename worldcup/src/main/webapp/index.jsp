<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="game.jsp">시작</a>
<hr>
<%
for (int i = 1; i <= 24; i++) {
%><img src="imgs/valo/<%= i %>.png"><%
}
%>
</body>
</html>