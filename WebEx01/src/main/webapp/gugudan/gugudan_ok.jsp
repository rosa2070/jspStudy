<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String startdan = request.getParameter("startdan");
	String enddan = request.getParameter("enddan");
	
	int iStartdan = Integer.parseInt(startdan);
	int iEnddan = Integer.parseInt(enddan);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("<table width='800' border='1'>");
	for(int i=iStartdan; i<=iEnddan; i++) {
		out.println("<tr>");
		for(int j=1; j<=9; j++) {
			out.println("<td>" + i + " X " + j + " = " + (i*j) + "</td>");
		}
		out.println("</tr>");
	}
	out.println("</table>");

%>
</body>
</html>