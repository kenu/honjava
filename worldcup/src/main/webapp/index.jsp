<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<String> list = new ArrayList<>();
// 문자열 배열에 모든 버거 이름 추가
String[] burgers = {
	"크리스피 치킨 버거", "베이컨 치킨 버거", "비프 앤 쉬림프 버거",
	"더블 비프 치즈 버거", "프랭크 버거", "K 불고기 버거", "K 핫불고기 버거", "K 불고기 치즈 버거",
    "치즈버거", "베이컨 치즈버거",
    "쉬림프 버거", "비프 앤 치킨 버거",
    "JG버거"
};

// 배열의 모든 요소를 ArrayList에 추가
for (String burger : burgers) {
    list.add(burger);
}
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
<a href="index.jsp?set=over">over</a> |
<a href="index.jsp?set=burger">burger</a>

<hr />
<a href="game.jsp?set=lol">lol</a> |
<a href="game.jsp?set=valo">valo</a> |
<a href="game.jsp?set=over">over</a> |
<a href="game.jsp?set=burger">burger</a>
시작
<hr>
<%
for (int i = 1; i <= count; i++) {
%><div style="display: inline-block;">
<img src="imgs/<%= set %>/<%= i %>.<%= ext %>"><br>
<%= (set.equals("burger")) ? list.get(i-1) : "" %>
</div>
<%
}
%>
</body>
</html>