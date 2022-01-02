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
	// 1. 파라미터 수집 : 받아온 값을 변수담아서 저장하는 행위
	int num = Integer.parseInt(request.getParameter("num"));
	String sub = request.getParameter("sub");
%> 
	<fieldset>
	
	<legend> 랜덤당첨 작성 </legend>

	<form action= "Ex09_result.jsp">
	
	주제 : <input type="text" name="sub"> 
	
	<br>
	
	<% for(int i=1; i<=num; i++) {%>
	
	아이템 <%= i %> : <input type="text" name="item"> <br>
	
	<% } %>
	
	<input type="submit" value="시작">
	</form>
	</fieldset>

</body>
</html>