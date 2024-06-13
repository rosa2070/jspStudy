<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// javascript 스크립트를 통해서 입력값 검사
	const checkfrm = function() {
		if (document.frm.year.value.trim() == '' || document.frm.month.value.trim() == '') {
			alert('값을 입력해주세요');
			return;
		}
		
		document.frm.submit();
	};
</script>
</head>
<body>

<form action="calendar_ok.jsp" method="post" name="frm">
<fieldset>
	<legend>달력 출력</legend>
	<label for="year">년도</label>
	<input type="text" id="year" name="year" />
	<label for="month">월</label>
	<input type="text" id="month" name="month" />
	<input type="button" id="btn" value="달력보기" onclick="checkfrm()"/>
</fieldset>
</form>

</body>
</html>