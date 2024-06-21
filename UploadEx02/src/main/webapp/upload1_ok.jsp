<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%
	// 1. 업로드 경로(절대경로)
	// 2. 제한 용량(byte 단위)
	// 3. 인코딩
	
	String uploadPath = "C:/java/jsp-workspace/UploadEx02/src/main/webapp/upload";
	int maxFileSize = 2 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, maxFileSize, encType, new DefaultFileRenamePolicy());
	out.println("전송완료<br />");
	
	out.println(multi.getFilesystemName("upload1") + "<br />");
	out.println(multi.getOriginalFileName("upload1") + "<br />");
	
	//파일 크기 - java.io.File
	java.io.File file = multi.getFile("upload1");
	out.println(file.length() + "<br />");
	out.println(new java.util.Date(file.lastModified()) + "<br />");
%>