<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	입력화면
	전송방식
		get		url 뒤에 연결해서 전송(데이터 - querystring)
		post	header에 숨겨서 전송
	name="data1" - getParameter 통해서 처리하는 구분이름
-->

<form action="form_ok.jsp" method="post">
	data1 : <input type="text" name="data1"/><br /><br />
	data2 : <input type="text" name="data2"/><br /><br />
	<br />
	<input type="submit" value="내용 전송" />
</form>
</body>
</html>