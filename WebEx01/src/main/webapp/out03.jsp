<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" autoFlush="true" %>
<%
	// out03.jsp
	out.println("남은 버퍼 크기 : " + out.getRemaining() + "<br />");
	out.println("1<br />");
	out.println("2<br />");
	out.println("3<br />");
	
	out.clearBuffer();
	out.println("남은 버퍼 크기 : " + out.getRemaining() + "<br />");
	out.println("4<br />");
	out.println("5<br />");
	out.println("6<br />");
	
	out.println("남은 버퍼 크기 : " + out.getRemaining() + "<br />");
	out.println("7<br />");
	out.println("8<br />");
	
	out.close();	// 에러발생
	out.println("9<br />");
	out.println("10<br />");

	
	
%>