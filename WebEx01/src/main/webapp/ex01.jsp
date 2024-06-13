<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello JSP 1
<%
    // java source = 메서드 내용에서 쓸 수 있는 내용
    // 지역변수 선언, 제어문, 출력문
    
    // 서버에 출력 : 디버깅
    System.out.println("Hello JSP 2");
	// 클라이언트에 출력 : 처리 결과 HTML
    out.println("<b>Hello JSP 2</b><br />");
    out.println("<b>Hello JSP 3</b><br />");
%>
</body>
</html>