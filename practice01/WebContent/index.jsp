<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	String id = (String) session.getAttribute("m_id");
	if(id!=null){
%>
	<p><%=id %>님이 로그인 하셨습니다.</p>
	<a href="logout.jsp">로그아웃</a>
<%
	} else {
%>
<%		
	}
%>
</body>
</html>