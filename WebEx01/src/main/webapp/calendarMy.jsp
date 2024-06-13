<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//현재달의 달력
	int year = 2024;
	int month = 6;
	
	Calendar startCalendar = Calendar.getInstance();
	Calendar endCalendar = Calendar.getInstance();
	
	startCalendar.set(year, month-1, 1);
	endCalendar.set(year, month, 1-1);
	
	int startDayOfWeek = startCalendar.get(Calendar.DAY_OF_WEEK);
	int endDate = endCalendar.get(Calendar.DATE);
%>

</body>
</html>