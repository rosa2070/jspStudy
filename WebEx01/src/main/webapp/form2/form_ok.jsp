<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String oper1 = request.getParameter("oper1");
	String oper2 = request.getParameter("oper2");
	
	int result = Integer.parseInt(oper1) + Integer.parseInt(oper2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
연산 결과 : <%= result %>
</body>
</html>