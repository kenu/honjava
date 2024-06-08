<%@page import="worldcup.Game"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<String> list = (List<String>) session.getAttribute("list");
if (list == null || list.size() == 0) {
	list = new Game().init();
}
String choice = request.getParameter("choice");
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
	size:
	<%=list.size()%>
	<div>
		<a href="game.jsp?choice=<%=left%>"> <img
			src="imgs/over/<%=left%>.png">
		</a> <a href="game.jsp?choice=<%=right%>"> <img
			src="imgs/over/<%=right%>.png">
		</a>
	</div>
	<div>
		<%
		for (String num : list) {
		%><img src="imgs/over/<%=num%>.png" style="width: 50px">
		<%
		}
		%>
	</div>
</body>
</html>