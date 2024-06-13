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
	<select id="year" name="year">
		<option value="2014">2014년</option>
		<option value="2015">2015년</option>
		<option value="2016">2016년</option>
		<option value="2017">2017년</option>
		<option value="2018">2018년</option>
		<option value="2019">2019년</option>
		<option value="2020">2020년</option>
		<option value="2021">2021년</option>
		<option value="2022">2022년</option>
		<option value="2023">2023년</option>
		<option value="2024">2024년</option>
	</select>
	<label for="month">월</label>
	<select id="month" name="month">
		<option value="1">1월</option>
		<option value="2">2월</option>
		<option value="3">3월</option>
		<option value="4">4월</option>
		<option value="5">5월</option>
		<option value="6">6월</option>
		<option value="7">7월</option>
		<option value="8">8월</option>
		<option value="9">9월</option>
		<option value="10">10월</option>
		<option value="11">11월</option>
		<option value="12">12월</option>
	</select>

	<input type="button" id="btn" value="달력보기" onclick="checkfrm()"/>
</fieldset>
</form>

</body>
</html>