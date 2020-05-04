<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	table {border-collapse: collapse;
	font-size: 20px;
	padding: 2px;
	text-align: center;
	}
	tr {border: 2px solid gray;
	width: 100px;
	height: 35px;}
	td {border: 2px solid gray;
	width: 100px;
	height: 35px}
</style>

<title>Insert title here</title>
</head>
<body>
	<%
		String numberString = request.getParameter("numberString");
		int number = (numberString == null) ? 0 : Integer.parseInt(numberString);
		
	%>
	<form>
		<input type="text" name="numberString" value="<%=number%>">
		<button type="submit" name="numberString">단</button>
	</form>
	<table>
		<%
			for (int i = number; i < number + 1; i++) {

				for (int j = 1; j < 10; j++) {
					out.print("<tr><td>" + i + " x " + j + " = " + i * j + "</td></tr>");
				}
				
			}
		%>
	</table>
</body>
</html>