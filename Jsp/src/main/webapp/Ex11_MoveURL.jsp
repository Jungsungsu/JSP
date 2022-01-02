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
	// 1. 파라미터 수집
	String naver = request.getParameter("naver");
	String google = request.getParameter("google");
	String daum = request.getParameter("daum");

	
	// 2. 네이버 / 구글 /다음 : 구분하기
	
	String subject = request.getParameter("page");
	
	// 3. 각각 사이트에 맞게 sendRedirect 이용해서 페이지 이동
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