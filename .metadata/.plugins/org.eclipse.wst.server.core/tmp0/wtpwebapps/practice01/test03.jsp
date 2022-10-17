<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - pageContext</title>
</head>
<body>
<h1>pageContext</h1>
<%
//str 값을 넣어줘야함! 안그럼 에러난다늉	test03?str=값 넣어주기(include나 forward)
	String str = request.getParameter("str");
	if(str.equals("include")){	//단순 내용삽입
		pageContext.include("target.jsp");	//현재 페이지에 target.jsp의 내용을 인클루드
	} else if(str.equals("forward")){
		pageContext.forward("target.jsp");	//현재 페이지에 target.jsp의 내용을 가져옴
	} else {
		out.println("<h2>잘못된 값</h2>");
	}
%>
</body>
</html>