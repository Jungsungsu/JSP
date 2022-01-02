<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
// login �޼���

	// �ٸ� �޼��忡���� ���������� �� �� �ִ� connection, preparestatement,
	// resultset�� ��������� ���ش�.
	Connection conn =null;
	PreparedStatement psmt =null;
	ResultSet rs = null;
	// 1. �Ķ���� ����
	String ID = request.getParameter("ID");
	String PW = request.getParameter("Pw");
	String nick = request.getParameter("nick");
	// 2. JDBC ��� insert
	// 		executeUpdate() --> int(�� �࿡ ��ȭ�� �ֳ�?)
	//		ȸ������ ���� > 1�� insert
	//		return 1;
	
	 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	
	 String url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String dbid = "hr";
	 String dbpw = "hr";
	 
	 conn = DriverManager.getConnection(url, dbid, dbpw);
	 
	 
	
	 String sql = " insert into jdbc_member values(?, ?, ?)";
	
	
	 psmt = conn.prepareStatement(sql);
	
	
	 psmt.setString(1, ID); // (���° ����ǥ����, ����� ����������)
	 psmt.setString(2, PW);
	 psmt.setString(3, nick);
	 
	
	int num1 = psmt.executeUpdate();
	// 3. ȸ�������� �����ߴٸ� Ex12_jointrue.jsp ���̵��� ���̺�����
	//	  �����ߴٸ� Ex12_joinFalse.jsp
	
	if(num1 > 0) {
		 response.sendRedirect("Ex12_joinTrue.jsp?nick=" + nick);
	 }
	 }catch(Exception e) {
		 response.sendRedirect("Ex12_joinFalse.jsp");
		 e.printStackTrace();
		 
	 }finally {
		 // jdbc ��� ���� �ݾ��ֱ�
		 // �ݾ��ٶ��� ������ ������ �ݴ�������� �ݾ��ֱ�
		 if( rs != null) {
			 rs.close();
		 }
		 if (psmt != null) {
			 psmt.close();
		 }
		 if ( conn != null) {
			 conn.close();
		 }
		 }
	 
	 
	
	
	 
	 
			 
	 

	
%>
</body>
</html>