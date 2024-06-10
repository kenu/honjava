<%@page import="worldcup.Game"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
} else if ("burger".equals(set)) {
	count = 13;
	ext = "jpg";
}

String choice = request.getParameter("choice");
List<String> list = (List<String>) session.getAttribute("list");
if (list == null || list.size() == 0 || choice == null) {
	list = new Game().init(count);
	session.setAttribute("list", list);
}
if (choice != null) {
	list.add(choice);
	session.setAttribute("list", list);
}

String left = list.get(0);
String right = list.get(1);
list.remove(0);
list.remove(0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1><a href="./index.jsp">이상형 월드컵</a></h1>
	size:
	<%=list.size()%>
	<div>
		<a href="game.jsp?choice=<%=left%>&set=<%=set%>"> <img
			src="imgs/<%= set %>/<%=left%>.<%= ext %>">
		</a> <a href="game.jsp?choice=<%=right%>&set=<%=set%>"> <img
			src="imgs/<%= set %>/<%=right%>.<%= ext %>">
		</a>
	</div>
	<div style="display: none;">
		<%
		for (String num : list) {
		%><img src="imgs/<%= set %>/<%=num%>.<%= ext %>" style="width: 50px">
		<%
		}
		%>
	</div>
</body>
</html>