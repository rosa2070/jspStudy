<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  upload.jsp -->
<form action="upload1_ok.jsp" method="post" enctype="multipart/form-data">
	파일 1 <input type="file" name="upload1" />
	<br /><br />
	<input type="submit" value="파일 전송" />
</form>
</body>
</html>