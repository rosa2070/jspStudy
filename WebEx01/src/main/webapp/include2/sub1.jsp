<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String data1 = request.getParameter("data1");
	String data2 = request.getParameter("data2");
%>    
Hello2 <br />
Hello3 <br />
<%
	out.println("data1 : " + data1 + "<br />");
	out.println("data2 : " + data2 + "<br />");
%>
