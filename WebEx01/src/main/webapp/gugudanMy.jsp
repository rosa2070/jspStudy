<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	StringBuilder sbHtml = new StringBuilder();
	sbHtml.append("<!DOCTYPE html>");
	sbHtml.append("<html>");
	sbHtml.append("<head>");
	sbHtml.append("<meta charset='UTF-8'>");
	sbHtml.append("<title>Insert title here</title>");
	sbHtml.append("</head>");
	sbHtml.append("<body>");
	sbHtml.append("<table border='1' width='900'>");
	for (int i=1; i<=9; i++) {
		sbHtml.append("<tr>");
		for(int j=1; j<=9; j++) {
			sbHtml.append("<td>" + i + "X" + j + "=" + (i*j) + "</td>");
		}
		sbHtml.append("</tr>");
	}
	sbHtml.append("</table>");
	sbHtml.append("</body>");
	sbHtml.append("</html>");
%>

<%	
	out.println(sbHtml.toString());
%>

