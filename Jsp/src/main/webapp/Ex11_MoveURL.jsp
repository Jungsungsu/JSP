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
	// 1. �Ķ���� ����
	String naver = request.getParameter("naver");
	String google = request.getParameter("google");
	String daum = request.getParameter("daum");

	
	// 2. ���̹� / ���� /���� : �����ϱ�
	
	String subject = request.getParameter("page");
	
	// 3. ���� ����Ʈ�� �°� sendRedirect �̿��ؼ� ������ �̵�
	if(subject.equals("naver")) {
		response.sendRedirect("http://www.naver.com");
	}
	else if(subject.equals("google")) {
		response.sendRedirect("http://www.google.com");
	}
	else {
		response.sendRedirect("http://www.daum.net");
	}
%>
</body>
</html>