<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" autoFlush="false" %>
<%
	// out01.jsp
	
	out.println("설정 버퍼 크기 : " + out.getBufferSize() + "<br />");
	out.println("남은 버퍼 크기 : " + out.getRemaining() + "<br />");
	out.println("Hello JSP<br />");
	out.println("Hello JSP<br />");
	out.println("Hello JSP<br />");
	out.println("남은 버퍼 크기 : " + out.getRemaining() + "<br />");
	out.println("isAutoFlush() : " + out.isAutoFlush() + "<br />");
%>