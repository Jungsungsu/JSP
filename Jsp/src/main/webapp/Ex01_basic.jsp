<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> ������ </h1>
<% 
	// Java�ڵ� �ۼ��ϴ� �κ� = ��ũ��Ʈ��
	int a = 1;
	int b = 2;
	System.out.println("a�� b�� ���� : " + (a+b));
%>

<!-- ���� ����ϱ� = ǥ���� -->
<%= a %> + <%= b %> = <%= a+b %>



</body>
</html>