<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="javax.naming.Context" %> 
<%@ page import="javax.naming.InitialContext" %> 
<%@ page import="javax.naming.NamingException" %>

<%@ page import="javax.sql.DataSource" %>
 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.SQLException" %> 

<%
	Connection conn = null;

	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		
		//[에러] Name [mariadb]은(는) 이 컨텍스트에 바인딩되지 않았습니다. [mariadb]을(를) 찾을 수 없습니다. -> 이름 잘못됨
		DataSource dataSource = (DataSource) envCtx.lookup("jdbc/mariadb1");
		
		conn = dataSource.getConnection();
		System.out.println( "연결 성공" );
		
	} catch(NamingException e) {
		System.out.println( "[에러] " + e.getMessage() );
	} catch(SQLException e) {
		System.out.println( "[에러] " + e.getMessage() );
	} finally {
		if (conn != null) conn.close();
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  jdbc1.jsp -->
</body>
</html>