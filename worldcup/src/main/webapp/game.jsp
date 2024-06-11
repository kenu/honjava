<%@page import="worldcup.GameData"%>
<%@page import="worldcup.Game"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<String> lolList = GameData.getLolList();
List<String> overList = GameData.getOverList();
List<String> itemList = GameData.getBurgerList();

String set = request.getParameter("set");
if (set == null) {
	set = "over";
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
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>이상한월드컵</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>
		<a href="./index.jsp">이상한 월드컵</a>
	</h1>
	size:
	<%=list.size()%>
	<div>
		<div class="item">
			<a href="game.jsp?choice=<%=left%>&set=<%=set%>"> <img
				src="imgs/<%=set%>/<%=left%>.<%=ext%>"><br> 
				<%=(set.equals("lol")) ? lolList.get(Integer.valueOf(left) - 1) : ""%>
				<%=(set.equals("over")) ? overList.get(Integer.valueOf(left) - 1) : ""%>
				<%=(set.equals("burger")) ? itemList.get(Integer.valueOf(left) - 1) : ""%>
			</a>
		</div>
		<div class="item">
			<a href="game.jsp?choice=<%=right%>&set=<%=set%>"> <img
				src="imgs/<%=set%>/<%=right%>.<%=ext%>"><br> 
				<%=(set.equals("lol")) ? lolList.get(Integer.valueOf(right) - 1) : ""%>
				<%=(set.equals("over")) ? overList.get(Integer.valueOf(right) - 1) : ""%>
				<%=(set.equals("burger")) ? itemList.get(Integer.valueOf(right) - 1) : ""%>
			</a>
		</div>
	</div>
	<div style="display: none;">
		<%
		for (String num : list) {
		%><img src="imgs/<%=set%>/<%=num%>.<%=ext%>" style="width: 50px">
		<%
		}
		%>
	</div>
</body>
</html>