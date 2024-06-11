<%@page import="worldcup.Info"%>
<%@page import="worldcup.GameData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<String> lolList = GameData.getLolList();
List<String> overList = GameData.getOverList();
List<String> itemList = GameData.getBurgerList();
List<String> mapList = GameData.getValmapsList();
List<String> chickenList = GameData.getChickenList();
List<String> ww2List = GameData.getWw2List();

String set = request.getParameter("set");
Info info = GameData.getInfo(set);
set = info.set;
int count = info.count;
String ext = info.ext;
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
	<a href="index.jsp?set=valmaps">valmaps</a> |
	<a href="index.jsp?set=chicken">chicken</a> |
	<a href="index.jsp?set=ww2">ww2</a> 갤러리
	<hr />
	<a href="game.jsp?set=lol">lol</a> |
	<a href="game.jsp?set=valo">valo</a> |
	<a href="game.jsp?set=over">over</a> |
	<a href="game.jsp?set=burger">burger</a> |
	<a href="game.jsp?set=valmaps">valmaps</a> |
	<a href="game.jsp?set=chicken">chicken</a> |
	<a href="game.jsp?set=ww2">ww2</a> 시작
	<hr>
	<%
	for (int i = 1; i <= count; i++) {
		String imageFile = set + "/" + i + "." + ext;
	%><div style="display: inline-block;">
		<img src="imgs/<%=imageFile%>"><br>
		<%=i%>
		<%=(set.equals("lol")) ? lolList.get(i - 1) : ""%>
		<%=(set.equals("over")) ? overList.get(i - 1) : ""%>
		<%=(set.equals("burger")) ? itemList.get(i - 1) : ""%>
		<%=(set.equals("valmaps")) ? mapList.get(i - 1) : ""%>
		<%=(set.equals("chicken")) ? chickenList.get(i - 1) : ""%>
		<%=(set.equals("ww2")) ? ww2List.get(i - 1) : ""%>
	</div>
	<%
	}
	%>
</body>
</html>