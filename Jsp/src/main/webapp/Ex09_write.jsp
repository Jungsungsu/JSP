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
	// 1. �Ķ���� ���� : �޾ƿ� ���� ������Ƽ� �����ϴ� ����
	int num = Integer.parseInt(request.getParameter("num"));
	String sub = request.getParameter("sub");
%> 
	<fieldset>
	
	<legend> ������÷ �ۼ� </legend>

	<form action= "Ex09_result.jsp">
	
	���� : <input type="text" name="sub"> 
	
	<br>
	
	<% for(int i=1; i<=num; i++) {%>
	
	������ <%= i %> : <input type="text" name="item"> <br>
	
	<% } %>
	
	<input type="submit" value="����">
	</form>
	</fieldset>

</body>
</html>