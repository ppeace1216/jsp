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
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");	//필수로 쳐놔야함
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("admin") && pw.equals("1234")){
		session.setAttribute("m_id", id);
		session.setAttribute("m_pw", pw);
		response.sendRedirect("index.jsp");
	} else {
		out.print("<h1>회원이 아닙니다.</h1>");
		out.print("<a href='login.jsp'>로그인 페이지로 이동</a>");
	}
%>
</body>
</html>