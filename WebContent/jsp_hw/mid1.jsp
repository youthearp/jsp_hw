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
		<button type="submit" name="dan">단</button>
	</form>
	<table>
		<%
			out.print("<td>");
			for (int i = number; i < 1; i++) {

				for (int j = 1; j < 10; j++) {
					out.print(i + " x " + j + " = " + i * j);
				}
				out.print("</td>");
			}
		%>
	</table>
</body>
</html>