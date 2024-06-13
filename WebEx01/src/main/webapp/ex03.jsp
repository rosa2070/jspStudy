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
	sbHtml.append("<b>Hello JSP 1</b><br />");
	sbHtml.append("<b>Hello JSP 2</b><br />");
	sbHtml.append("</body>");
	sbHtml.append("</html>");
%>

<%	
	out.println(sbHtml.toString());
%>
<%= sbHtml.toString() %>
<%= "Hello JSP 3<br/>" %>