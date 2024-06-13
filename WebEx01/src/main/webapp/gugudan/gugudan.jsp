<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// javascript 스크립트를 통해서 입력값 검사
	const checkfrm = function () {
		//alert('click');
		if (document.frm.startdan.value.trim() == '' || document.frm.enddan.value.trim() == '') {
			alert('값을 입력해주세요');
			return;
		}
		
		document.frm.submit();
	};
</script>
</head>
<body>

<form action="./gugudan_ok.jsp" method="post" name="frm">
<fieldset>
	<legend>우편번호 검색</legend>
	<label for="startdan">시작단</label>
	<input type="text" id="startdan" name="startdan" />
	-
	<label for="enddan">끝단</label>
	<input type="text" id="enddan" name="enddan" />
	<input type="button" value="구구단 출력" onclick="checkfrm()"/>
</fieldset>
</form>
</body>
</html>