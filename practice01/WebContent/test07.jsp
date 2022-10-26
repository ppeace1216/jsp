<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - scope</title>
</head>
<body>
<%
	//강제 형변환을 해줘야 에러가 안난다
	ArrayList<String> lst = (ArrayList<String>) request.getAttribute("lst");
	HashSet<String> set = (HashSet<String>) request.getAttribute("set");
	HashMap map = (HashMap) request.getAttribute("map");
	
	//List의 접근
	for(int i=0;i<lst.size();i++){
		out.println("<p>"+lst.get(i)+"</p>");
	}
	out.println("<hr>");
	//Set의 접근
	Iterator iter = set.iterator();
	while(iter.hasNext()){
		out.println("<p>"+iter.next()+"</p>");
	}
	out.println("<hr>");
	//Map의 접근
	/*Collection : List, Set, Map
	Set<String> keys = map.keySet();	-키 불러오기
	for(String key : keys){			-test1, test2, test3 ...
		out.println(key);
	}
	*/
	Collection<String> val = map.values();	//값만 불러오기
	for(String name : val){
		out.println("<p>"+name+"</p>");
	}
	
	out.println("user id : "+application.getInitParameter("userId"));
	
	//Scope 값이 어디까지 유효하냐!
	//page, request, session, application 객체의 값 설정
	//pageContext - 현재 페이지에서만 유효
	pageContext.setAttribute("pagedata", "페이지컨텍스트");
	//request - 폼 전송의 목적지 또는 a 요소의 목적지, forward의 목적지까지 유효
	request.setAttribute("requestData", "리퀘스트");
	//session - 로그인 하는 동안만 유효
	session.setAttribute("session", "세션");
	//application - 웹 브라우저 도는 현재 애플리케이션이 실행되고 있는 동안 유효(전역객체)
	//전역객체는 web.xml에 등록도 가능함 단, 공통변수로서 초기값만 설정 가능함
	application.setAttribute("applicationData", "어플리케이션");
	application.setAttribute("msg", "감사합니다.");
	
	//출력
	out.println("<h3>페이지</h3>"+pageContext.getAttribute("pageData"));
	out.println("<h3>리퀘스트</h3>"+request.getAttribute("requestData"));
	out.println("<h3>세션</h3>"+session.getAttribute("session"));
	out.println("<h3>어플리케이션</h3>"+application.getAttribute("applicationData"));
	out.println("<h3>어플리케이션 메시지</h3>"+application.getAttribute("msg"));
	out.println("user id : "+application.getInitParameter("userId"));
	out.println("<a href='test08.jsp?msg=테스트08로갑니다'>테스트08</a>");
%>
</body>
</html>