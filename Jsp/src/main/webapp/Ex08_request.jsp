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
	// request.getParameter 
	String name = request.getParameter("name");
	int Java = Integer.parseInt(request.getParameter("Java"));
	int Web = Integer.parseInt(request.getParameter("Web"));
	int Iot = Integer.parseInt(request.getParameter("Iot"));
	int Android = Integer.parseInt(request.getParameter("Android"));

%>

	<form action="Ex08_request.jsp">
		�̸� : <%= name %> <br>
		Java : <%= Java %> <br>
		Web : <%= Web %> <br>
		Iot : <%= Iot %> <br>
		Android : <%= Android %> <br>
		<!-- ���  -->
		<%
			int Avg = (Java+Web+Iot+Android)/4;
		%>
		��� : <%= Avg %>
		<!-- ����  -->
		<%
		String grade ="";
		if (Avg >= 95 && Avg<=100) {
			grade = "A+";
			}
		else if (Avg >= 90 && Avg<=94) {
			grade = "A";
			}
		if (Avg >= 85 && Avg<=89) {
			grade = "B+";
			}
		if (Avg >= 80 && Avg<=84) {
			grade = "B";
			}
		else {
			grade = "F";
			}
		%>
		<h1> <%=grade %> </h1>
		<input type ="submit" value="Ȯ���ϱ�">
	</form>
</body>
</html>