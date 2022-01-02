<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1> 1부터 100까지의 합 </h1>
<%
	// 스크립트릿 : Java코드 작성
	int sum =0;
	for(int i = 1; i<101; i++) { 
	sum+=i;
}
%>

<%= sum %>


</body>

</html>