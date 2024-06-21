<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%
	String uploadPath = "C:/java/jsp-workspace/UploadEx02/src/main/webapp/upload";
	int maxFileSize = 2 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, maxFileSize, encType, new DefaultFileRenamePolicy());
	out.println("전송완료<br />");
	
	out.println("id : " + request.getParameter("id") + "<br />");
	out.println("password : " + request.getParameter("password") + "<br />");
	
	out.println("id : " + multi.getParameter("id") + "<br />");
	out.println("password : " + multi.getParameter("password") + "<br />");
	
	out.println("ip : " + request.getRemoteAddr() + "<br />");
	//out.println("ip : " + multi.getRemoteAddr() + "<br />");
%>