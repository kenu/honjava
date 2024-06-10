<%@page import="worldcup.Game"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<String> overList = new ArrayList<>();
String[] overs = { "벤처", "D.VA", "겐지", "둠피스트", "라마트라", "라이프위버", "라인하르트", "레킹볼", "로드호그", "루시우", "리퍼", "마우가", "메르시", "메이",
		"모이라", "바스티온", "바티스트", "브리기테", "소전", "솔저: 76", "솜브라", "시그마", "시메트라", "아나", "애쉬", "에코", "오리사", "위도우메이커", "윈스턴",
		"일리아리", "자리야", "정커퀸", "정크랫", "젠야타", "캐서디", "키리코", "토르비욘", "트레이서", "파라", "한조" };
for (String over : overs) {
	overList.add(over);
}

List<String> itemList = new ArrayList<>();
String[] burgers = { "크리스피 치킨 버거", "베이컨 치킨 버거", "비프 앤 쉬림프 버거", "더블 비프 치즈 버거", "프랭크 버거", "비프 앤 치킨 버거", "K 불고기 버거",
		"K 핫불고기 버거", "K 불고기 치즈 버거", "치즈버거", "베이컨 치즈버거", "쉬림프 버거", "JG버거" };

for (String burger : burgers) {
	itemList.add(burger);
}
String set = request.getParameter("set");
if (set == null) {
	set = "over";
}
int count = 40;
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
	<h1>
		<a href="./index.jsp">이상형 월드컵</a>
	</h1>
	size:
	<%=list.size()%>
	<div>
		<div class="item">
			<a href="game.jsp?choice=<%=left%>&set=<%=set%>"> <img
				src="imgs/<%=set%>/<%=left%>.<%=ext%>"><br> 
				<%=(set.equals("over")) ? overList.get(Integer.valueOf(left) - 1) : ""%>
				<%=(set.equals("burger")) ? itemList.get(Integer.valueOf(left) - 1) : ""%>
			</a>
		</div>
		<div class="item">
			<a href="game.jsp?choice=<%=right%>&set=<%=set%>"> <img
				src="imgs/<%=set%>/<%=right%>.<%=ext%>"><br> 
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