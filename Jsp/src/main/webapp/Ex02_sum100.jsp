<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1> 1���� 100������ �� </h1>
<%
	// ��ũ��Ʈ�� : Java�ڵ� �ۼ�
	int sum =0;
	for(int i = 1; i<101; i++) { 
	sum+=i;
}
%>

<%= sum %>


</body>

</html>