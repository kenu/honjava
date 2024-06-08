<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String set = request.getParameter("set");
if (set == null) {
	set = "over";
}
int count = 20;
String ext = "png";
if ("lol".equals(set)) {
	count = 160;
	ext = "jpg";
} else if ("valo".equals(set)) {
	count = 24;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상형월드컵</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%= set %>
<hr />
<a href="index.jsp?set=lol">lol</a> |
<a href="index.jsp?set=valo">valo</a> |
<a href="index.jsp?set=over">over</a>
<hr />
<a href="game.jsp?set=lol">lol</a> |
<a href="game.jsp?set=valo">valo</a> |
<a href="game.jsp?set=over">over</a>
시작
<hr>
<%
for (int i = 1; i <= count; i++) {
%><img src="imgs/<%= set %>/<%= i %>.<%= ext %>"><%
}
%>
</body>
</html>