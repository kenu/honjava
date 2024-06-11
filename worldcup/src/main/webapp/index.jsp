<%@page import="worldcup.GameData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<String> lolList = GameData.getLolList();
List<String> overList = GameData.getOverList();
List<String> itemList = GameData.getBurgerList();
List<String> ww2List = GameData.getww2List();

String set = request.getParameter("set");
if (set == null) {
	set = "ww2";
}
int count = 40;
String ext = "png";
if ("lol".equals(set)) {
	count = 167;
	ext = "jpg";
} else if ("valo".equals(set)) {
	count = 24;
} else if ("burger".equals(set)) {
	count = 13;
	ext = "jpg";
} else if ("ww2".equals(set)) {
	count = 20;
	ext = "jpg";
}

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>이상한월드컵</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%=set%>
	<hr />
	<a href="index.jsp?set=lol">lol</a> |
	<a href="index.jsp?set=valo">valo</a> |
	<a href="index.jsp?set=over">over</a> |
	<a href="index.jsp?set=burger">burger</a> |
	<a href="index.jsp?set=ww2">ww2</a>

	<hr />
	<a href="game.jsp?set=lol">lol</a> |
	<a href="game.jsp?set=valo">valo</a> |
	<a href="game.jsp?set=over">over</a> |
	<a href="game.jsp?set=burger">burger</a> |
	<a href="game.jsp?set=ww2">ww2</a> 시작
	<hr>
	<%
	for (int i = 1; i <= count; i++) {
		String imageFile = set + "/" + i + "." + ext;
	%><div style="display: inline-block;">
		<img src="imgs/<%=set%>/<%=i%>.<%=ext%>"><br>
		<%= i %>
		<%=(set.equals("lol")) ? lolList.get(i - 1) : ""%>
		<%=(set.equals("over")) ? overList.get(i - 1) : ""%>
		<%=(set.equals("burger")) ? itemList.get(i - 1) : ""%>
		<%=(set.equals("ww2")) ? ww2List.get(i - 1) : ""%>
	</div>
	<%
	}
	%>
</body>
</html>