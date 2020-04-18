<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String numberString = request.getParameter("numberString");
int number = (numberString == null) ? 0 : Integer.parseInt(numberString);
String plus = request.getParameter("++");
if(plus != null){
	number++;
}
%>
	<form>
		<input type = "text" name = "numberString" value = "<%=number%>">
		<button type = "submit" name = "++">++</button>
	</form>
</body>
</html>