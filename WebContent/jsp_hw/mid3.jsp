<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.select {
	margin: 10px;
}

div.button {
	margin: 10px;
}

select {
	width: 73px;
	height: 30px;
	padding: 2px;
}

input {
	width: 150px;
	height: 25px;
	padding: 2px;
}

button {
	width: 70px;
	height: 28px;
	text-align: center;
}
</style>
</head>
<body>
	<%
		String number = request.getParameter("number");
		if (number == null)
			number = "one";
	%>
	<form>
		<div>
			<input type="radio" name="number" value="one"
				<%="one".equals(number) ? "checked" : ""%>>one <input
				type="radio" name="number" value="two"
				<%="two".equals(number) ? "checked" : ""%>>two <input
				type="radio" name="number" value="three"
				<%="three".equals(number) ? "checked" : ""%>>three
		</div>
		<div class="select">
			<select name="number">
				<option value="one" <%="one".equals(number) ? "selected" : ""%>>one</option>
				<option value="two" <%="two".equals(number) ? "selected" : ""%>>two</option>
				<option value="three"
					<%="three".equals(number) ? "selected" : ""%>>three</option>
			</select>
		</div>
		<div class="button">
			<button type="submit" name="OK">OK</button>
		</div>
	</form>
</body>
</html>