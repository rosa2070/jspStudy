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
		if (document.frm.deptno.value.trim() == '' 
				|| document.frm.dname.value.trim() == ''
				|| document.frm.loc.value.trim() =='') {
			alert('값을 입력해주세요'); 
			return;
		}
		
		document.frm.submit();
	}
</script>
</head>
<body>
<!--  dept_insert_form.jsp -->

<form action="./dept_insert_form_ok.jsp" method="post" name="frm">
<fieldset>
	<label for="deptno">부서 번호</label>
	<input type="text" id="deptno" name="deptno" />
	
	<br /><br />
	
	<label for="dname">부서 이름</label>
	<input type="text" id="dname" name="dname" />
	
	<br /><br />
	
	<label for="loc">부서 위치</label>
	<input type="text" id="loc" name="loc" />
	
	<br /><br />
	
	<input type="submit" id="btn" value="내용 입력" onclick="checkfrm()"/>
	
</fieldset>
</form>
</body>
</html>