<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jsp_hw.*"%>
<%
	String userName = "";
	String userSex = "";

	String 에러메시지 = null;
	request.setCharacterEncoding("UTF-8");
	if (request.getMethod().equals("POST")) {
		userName = request.getParameter("userName");
		userSex = request.getParameter("userSex");

		if (userName == null || userName.length() == 0)
			에러메시지 = "사용자 이름을 입력하세요";
		else if (userSex == null || userSex.length() == 0)
			에러메시지 = "학번을 입력하세요";

		else {
			MidUser midUser = new MidUser(userName, userSex);
			session.setAttribute("miduser", midUser);
			response.sendRedirect("mid4.jsp");
			return;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://kit.fontawesome.com/68abb170e0.js"
	crossorigin="anonymous"></script>
<style>
body {
	font-family: 굴림체;
	font-size: 10pt;
}

div.container {
	width: 400px;
	margin: 20px auto;
}

form, form div {
	margin-bottom: 20px;
}

label {
	display: block;
}

input.text {
	width: 200px;
	padding: 5px;
}

select {
	width: 150px;
	padding: 5px;
}

.btn {
	padding: 0.7em 2em;
	border: 1px solid #aaa;
	border-radius: 4px;
	background: linear-gradient(#fff, #ddd);
	color: black;
	font-family: 굴림체;
	font-size: 10pt;
	line-height: 1em;
	text-decoration: none;
	cursor: pointer;
	display: inline-block;
}

.btn:active {
	-ms-transform: translateY(2px);
	-webkit-transform: translateY(2px);
	transform: translateY(2px);
	background: #ccc;
}

hr {
	margin-top: 80px;
}

div.info {
	margin: 10px;
	padding: 10px 20px;
	background-color: #dff;
	border: 1px solid #8ff;
}

div.error {
	margin: 10px;
	padding: 10px 20px;
	background-color: #fdd;
	border: 1px solid #faa;
}
</style>
</head>
<body>

	<div class="container">


		<form method="post">
			<h1>회원등록</h1>
			<div>
				<label>이름</label> <input type="text" class="text" name="userName"
					value="<%=userName%>" />
			</div>
			<div>
				<label>성별</label> <input type="radio" name="userSex" value="남자">남자
				<input type="radio" name="userSex" value="여자">여자
			</div>

			<button type="submit" class="btn">
				<i class="fas fa-user-plus"></i> 회원등록
			</button>
		</form>

		<%
			if (에러메시지 != null) {
		%>
		<div class="error">
			회원등록 실패:
			<%=에러메시지%>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>
