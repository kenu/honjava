<%@page import="sangil.Hello"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%=new Date()%>
		<hr>
		<%=request.getParameter("no")%>
		<%=request.getParameter("ti")%>
		<hr>
		<img src="dog<%=request.getParameter("n")%>.jpg">
		<hr>
		<%=new Hello().getMessage()%>
	</div>
</body>
</html>