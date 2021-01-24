<%@page import="java.net.URLDecoder"%>
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
		//1. 클라이언트로부터 cookie[] 얻어오기
		Cookie[] ck = request.getCookies();
		String str=null;
		if(ck != null){
			for(Cookie c : ck){
				str = URLDecoder.decode(c.getValue(),"UTF-8").toString();
			}
		
	%>
		<h2>로그인 성공</h2>
		<%=str %>님 안녕하세요!<br>
		홈페이지 방문을 환영합니다.<br>
		
		<form method="get" action="logout.jsp">
			<input type="submit" value="로그아웃">
		</form>
	<% 	
		}else{
	%>
		<h2>로그인에 실패</h2>
		<p> <a href="loginForm.jsp">되돌아가기</a>
	<% 
		}
	%>

</body>
</html>