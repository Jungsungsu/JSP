<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! // ���� : Ŭ���� ������ �����ϱ� ���ؼ� �ۼ�
	public int sum(int a, int b) {
		int result =  a + b;
		return result;
}
%>

	<%
		// ��ũ��Ʈ�� : Java�ڵ� �ۼ�
		int a = 10;
		int b = 5;
		int result = sum(a, b);
		
		out.print(result);
	
	%>
	<!-- ǥ���� : ���� ���  -->
	
	
</body>
</html>