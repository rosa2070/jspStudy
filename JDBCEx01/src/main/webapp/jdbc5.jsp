<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<%
	String url = "jdbc:mariadb://localhost:3306/sample";
	String user = "root";
	String password = "123456";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	StringBuilder sbHtml = new StringBuilder();
	
	try {
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection(url, user, password);
		 
		String sql = "select empno, ename, job, mgr, hiredate, sal, comm, deptno from emp where deptno = 20";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		sbHtml.append("<table width='800' border='1'>");
		while(rs.next()) {
			sbHtml.append("<tr>");
			sbHtml.append("<td>" + rs.getString("empno") + "</td>");
			sbHtml.append("<td>" + rs.getString("ename") + "</td>");
			sbHtml.append("<td>" + rs.getString("job") + "</td>");
			sbHtml.append("<td>" + rs.getString("mgr") + "</td>");
			sbHtml.append("<td>" + rs.getString("hiredate") + "</td>");
			sbHtml.append("<td>" + rs.getString("sal") + "</td>");
			sbHtml.append("<td>" + rs.getString("comm") + "</td>");
			sbHtml.append("<td>" + rs.getString("deptno") + "</td>");
			sbHtml.append("</tr>");
		}
		sbHtml.append("</table>");
		
	} catch(ClassNotFoundException e) {
		System.out.println("[에러] " + e.getMessage());
	} catch(SQLException e) {
		System.out.println("[에러] " + e.getMessage());
	} finally {
		if ( rs != null) rs.close();
		if (pstmt != null) pstmt.close();
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
<!--  jdbc4.jsp : select -->
<%= sbHtml.toString() %>

</body>
</html>