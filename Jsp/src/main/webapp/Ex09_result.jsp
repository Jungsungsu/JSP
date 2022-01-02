<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
<%
   String sub = request.getParameter("sub");
   String[] item = request.getParameterValues("item");
   
   Random rd= new Random();
   int a = rd.nextInt(item.length);
   %>
   <fieldset>
   
   <legend> 랜덤당첨 결과 </legend>

      <form action="Ex09_write.jsp">   
         <%= sub %> <br>
         <%= item[a] %>
      </form>
   </fieldset>
   
   
   

</body>
</html>