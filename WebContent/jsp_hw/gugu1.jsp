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
<title>gugu1</title>
</head>
<body>
	<table>
		<%for(int i = 1; i < 10; i++){
			out.print("<tr>");
			for(int j = 2; j < 10; j++){
				out.print("<td>" + j + " x " + i + " = " + j*i +"</td>");
			}
			out.print("</tr>");
		}
		%>
	</table>
</body>
</html>