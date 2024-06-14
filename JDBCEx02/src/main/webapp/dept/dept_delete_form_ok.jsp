<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="javax.naming.Context" %> 
<%@ page import="javax.naming.InitialContext" %> 
<%@ page import="javax.naming.NamingException" %>

<%@ page import="javax.sql.DataSource" %>
 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.SQLException" %>

<%   
    //dept_delete_form_ok.jsp
    
    request.setCharacterEncoding("utf-8");
	
	String deptno = request.getParameter("deptno");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	// flag 에러 감지
	// 1 - 시스템
	// 0 - 정상
	int flag = 1;
	
	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource dataSource = (DataSource)envCtx.lookup("jdbc/mariadb1");
		
		conn = dataSource.getConnection();
		
		String sql = "delete from dept2 where deptno=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, deptno);
		
		int result = pstmt.executeUpdate();
		
		if (result == 1) {
			flag = 0;
		}
		
	} catch(NamingException e) {
		System.out.println("[에러] " + e.getMessage());
	} catch(SQLException e) {
		System.out.println("[에러] " + e.getMessage());
	} finally {
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}
	
	//response.sendRedirect("./dept_list.jsp");
	
	out.println("<script type='text/javascript'>");
	if (flag == 0) {
		// 정상
		out.println("alert('부서 삭제에 성공');");
		out.println("location.href='./dept_list.jsp';");
	} else {
		// 비정상
		out.println("alert('부서 삭제에 실패');");
		out.println("history.back();");
	}
	out.println("</script>");
		
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>