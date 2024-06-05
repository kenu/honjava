<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
List<String> list = new ArrayList<>();
%>
<%
String choice = request.getParameter("choice");
if (choice != null) {
	list.add(choice);
	if (list.size() > 11) {
		list = new ArrayList<>();
	}
}

int left = list.size() * 2 + 1;
int right = left + 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game</title>
</head>
<body>
    size: <%= list.size() %>
	<div>
		<a href="game.jsp?choice=<%= left %>"> <img src="imgs/valo/<%= left %>.png">
		</a> 
		<a href="game.jsp?choice=<%= right %>"> <img src="imgs/valo/<%= right %>.png">
		</a>
	</div>
	<div>
	<%
	for (String num : list) {
	%><img src="imgs/valo/<%=num %>.png" style="width: 50px">
	<%
	}
	%>
	</div>
</body>
</html>