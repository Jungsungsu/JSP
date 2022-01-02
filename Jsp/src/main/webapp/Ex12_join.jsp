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
// login 메서드

	// 다른 메서드에서도 공통적으로 쓸 수 있는 connection, preparestatement,
	// resultset을 멤버변수로 빼준다.
	Connection conn =null;
	PreparedStatement psmt =null;
	ResultSet rs = null;
	// 1. 파라미터 수집
	String ID = request.getParameter("ID");
	String PW = request.getParameter("Pw");
	String nick = request.getParameter("nick");
	// 2. JDBC 사용 insert
	// 		executeUpdate() --> int(몇 행에 변화가 있나?)
	//		회원가입 성공 > 1행 insert
	//		return 1;
	
	 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	
	 String url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String dbid = "hr";
	 String dbpw = "hr";
	 
	 conn = DriverManager.getConnection(url, dbid, dbpw);
	 
	 
	
	 String sql = " insert into jdbc_member values(?, ?, ?)";
	
	
	 psmt = conn.prepareStatement(sql);
	
	
	 psmt.setString(1, ID); // (몇번째 물음표인지, 어떤값을 넣을것인지)
	 psmt.setString(2, PW);
	 psmt.setString(3, nick);
	 
	
	int num1 = psmt.executeUpdate();
	// 3. 회원가입이 성공했다면 Ex12_jointrue.jsp 아이디값을 같이보내서
	//	  실패했다면 Ex12_joinFalse.jsp
	
	if(num1 > 0) {
		 response.sendRedirect("Ex12_joinTrue.jsp?nick=" + nick);
	 }
	 }catch(Exception e) {
		 response.sendRedirect("Ex12_joinFalse.jsp");
		 e.printStackTrace();
		 
	 }finally {
		 // jdbc 사용 이후 닫아주기
		 // 닫아줄때는 열었던 순서의 반대방향으로 닫아주기
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