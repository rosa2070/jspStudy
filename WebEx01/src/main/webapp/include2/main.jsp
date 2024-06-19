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
	int i = 10;
%>
Hello 1<br />
<jsp:include page="sub1.jsp">
	<jsp:param name="data1" value="value1" />
	<jsp:param name="data2" value="<%=i %>" />
	
</jsp:include>
Hello 4<br />

</body>
</html>