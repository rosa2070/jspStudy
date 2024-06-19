<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" autoFlush="true" %>
<%
	// out01.jsp
	
	out.println("설정 버퍼 크기 : " + out.getBufferSize() + "<br />");
	out.println("남은 버퍼 크기 : " + out.getRemaining() + "<br />");

	for( int i=1; i<100; i++) {
		out.println( i + "Hello JSP<br />");
		if (i % 50 == 0) {
			out.println("남은 버퍼 크기 : " + out.getRemaining() + "<br />");
		}
	}
	
%>