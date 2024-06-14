<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="javax.naming.Context" %> 
<%@ page import="javax.naming.InitialContext" %> 
<%@ page import="javax.naming.NamingException" %>

<%@ page import="javax.sql.DataSource" %>
 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %> 
<%@ page import="java.sql.SQLException" %> 

<%

	request.setCharacterEncoding("utf-8");

	String deptno = request.getParameter("deptno");
	
	String dname = "";
	String loc = "";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
	Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource dataSource = (DataSource)envCtx.lookup("jdbc/mariadb1");
		
		conn = dataSource.getConnection();
		
		String sql = "select dname, loc from dept2 where deptno=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, deptno);
		
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			dname = rs.getString("dname");
			loc = rs.getString("loc");
		}
	} catch(NamingException e) {
		System.out.println("[에러] " + e.getMessage());
	} catch(SQLException e) {
		System.out.println("[에러] " + e.getMessage());
	} finally {
		if (rs != null) rs.close();
		if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
<!--  dept_delete_form.jsp -->

<form action="./dept_delete_form_ok.jsp" method="post" name="frm">
<input type="hidden" name="deptno" value="<%=deptno %>" />
<fieldset>
	<!--  
	<label for="deptno">부서 번호</label>
	<input type="text" id="deptno" name="deptno" value="<%=deptno %>" readonly/>
	
	<br /><br />
	-->
	<label for="dname">부서 이름</label>
	<input type="text" id="dname" name="dname" value="<%=dname %>" readonly/>
	
	<br /><br />
	
	<label for="loc">부서 위치</label>
	<input type="text" id="loc" name="loc" value="<%=loc %>" readonly/>
	
	<br /><br />
	
	<input type="submit" id="btn" value="내용 삭제" />
	
</fieldset>
</form>
</body>
</html>