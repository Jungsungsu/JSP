<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! 
	
	public int sum(int a, int b) {
		return a+b;		
	}
	
	public int minus(int a, int b) {
		return a-b;
	}
	
	public int multi(int a, int b) {
		return a*b;		
	}
	
	public int div(int a, int b) {
		return a/b;
	}
	
	%>

	<%
	// Java코드
	int a = Integer.parseInt(request.getParameter("num1"));
	int b = Integer.parseInt(request.getParameter("num2"));
	%>
	
	<!-- 표현식 : 웹에 출력  -->
	<%= a %> + <%= b %> = <%= sum(a, b) %> <br>
	<%= a %> - <%= b %> = <%= minus(a, b) %> <br>
	<%= a %> * <%= b %> = <%= multi(a, b) %> <br>
	<%= a %> / <%= b %> = <%= div(a, b) %> <br>
</body>
</html>