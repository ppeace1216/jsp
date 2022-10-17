<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action=loginPro.jsp method="post" id="login">
		<fieldset>
			<legend>로그인</legend>
			<input type="text" name="id" id="id" title="아이디 입력" placeholder="아이디를 입력" required autofocus>
			<input type="text" name="pw" id="pw" title="비밀번호 입력" placeholder="비밀번호를 입력">
			<input type="submit" value="로그인" class="input_btn">
			<input type="reset" value="취소" class="input_btn">
		</fieldset>
	</form>
</body>
</html>