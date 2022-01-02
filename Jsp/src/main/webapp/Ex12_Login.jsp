<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;	
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "hr";
	String dbpw = "hr";
	conn = DriverManager.getConnection(url, dbid, dbpw);
	
	
	String sql = "select * from jdbc_member where id = ? and pw = ?";
	
	
	psmt = conn.prepareStatement(sql);
	
	
	psmt.setString(1, id); 
	psmt.setString(2, pw);
	
	rs =  psmt.executeQuery();
	
	if(rs.next() == true){
		
	
		
		session.setAttribute("id", id);
		
		response.sendRedirect("Ex12_LoginTrue.jsp");
		
		
	}else{
		response.sendRedirect("Ex12_LoginTrue.jsp");
	}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
		if( rs != null){
		rs.close();
		}
		if( psmt != null){
		psmt.close();
		}
		if(conn != null){
		conn.close();
		}
	}
%>
	 
			 
	 


	
	
	
</body>
</html>