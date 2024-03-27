<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>
<body>
	<main>
		
		<c:choose>
			<%-- 로그인 하지 않았을 때 --%>
			<c:when test="${empty sessionScope.loginMember}">
				<h1></h1>
					<form action="/login" method="post">
						<div>
							<p>아이디</p>
							<input type="text" name="loginId">
						</div>
						<div>
							<p>비밀번호</p>
							<input type="password" name="loginPw">
						</div>
						
						<button>로그인</button>
						
						<a href="/signup">회원가입</a>
						<a href="/searchPw">비밀번호 찾기</a>
					
					</form>
					
			</c:when>
			
			<%--로그인을 했다면 --%>
		
		
		
		
		
		</c:choose>
		
		
		
		
	
	</main>
	
	
	
</body>
</html>