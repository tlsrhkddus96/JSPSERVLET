<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//원래는 DB에서 가져와야 하는 값
	String id = "tlsrhkddus";
	String pwd = "sinky1996";
	String name = "신광연";
	
	if(id.equals(request.getParameter("id"))
			&& pwd.equals(request.getParameter("pwd")) ){
		//id, pwd가 같을 때만 쿠키 생성 그리고 클라이언트에 추가
		
		//1. 쿠키 객체 생성(username에 신광연)
		Cookie c = new Cookie("username",URLEncoder.encode(name,"UTF-8"));
		//2. 속성 부여
		c.setMaxAge(365*24*60*60);
		//3. 클라이언트에 전송
		response.addCookie(c);
	
%>
	<h2>로그인 성공</h2>
	<p> <a href="main.jsp">들어가기</a>
<%
	}else{
%>
	<h2>로그인 실패</h2>
	<p> <a href="loginForm.jsp">되돌아가기</a>
<%
	}
%>