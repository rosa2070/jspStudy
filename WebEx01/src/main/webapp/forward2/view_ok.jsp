<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String action = request.getParameter("action");
	
	RequestDispatcher dispatcher = null;
	
	if (action.equals("a")) {
		dispatcher = request.getRequestDispatcher("./a.jsp");
	} else if (action.equals("b")) {
		dispatcher = request.getRequestDispatcher("./b.jsp");
	}
	
	dispatcher.forward(request, response);
%>