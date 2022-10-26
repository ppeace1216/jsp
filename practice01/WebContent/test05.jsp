<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - response 객체 </title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	//response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");	//이렇게 더 많이 쓴다
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//쿠키만들기
	Cookie cookie = null;
	
	//만약, 아이디와 비밀번호가 맞으면, 로그인 처리하고, login_ok.jsp 로 이동
	if(id.equals("admin") && pw.equals("1234")){
		session.setAttribute("m_id", id);
		session.setAttribute("m_pw", pw);
		out.println("로그인 되셨습니다.");
		response.addCookie(cookie);		//쿠키 추가
		response.sendRedirect("login_ok.jsp");
	} else {
		//일치하지 않으면, 원래 페이지인 loginForm.html 로 이동
		out.println("로그인 정보가 일치하지 않습니다.");
		out.print("<a href='loginForm?msg=로그인실패...'>로그인 페이지로 이동</a>");
		//현재 처리된 내용의 상태코드를 설정
		response.setStatus(404);	
		//해당 상태코드의 메세지 보내기
		response.sendError(404, "해당 페이지가 존재하지 않습니다.");
	}
%>
	<p> 콘텐츠 유형 : <%=response.getContentType() %>
	<p> 문자 인코딩 : <%=response.getCharacterEncoding() %>
</body>
</html>