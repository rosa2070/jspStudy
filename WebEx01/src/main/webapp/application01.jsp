<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// tomcat
	out.println(application.getServerInfo() + "<br />");
	// JSP 버전
	out.println(application.getMajorVersion() + "<br />");
	out.println(application.getMinorVersion() + "<br />");

%>
</body>
</html>