<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>To do List</title>
	<%-- css, js 파일 연결할 때 webapp 폴더 기준! --%>
	<link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
	
	<main>
	
		<c:choose>
			<%-- 로그인을 하지 않았다면 : 로그인/회원가입 입력 폼 출력 --%>
			<c:when test="${empty sessionScope.loginMember}">	 <%-- sessionScope안에 loginMember가 없다면 --%>
				
				<h1>TodoList 로그인</h1>
				
				<form action="/login" method="post" class="login-form">
				 	<div>
				 		<p>아이디</p>
				 		<input type="text" name="inputId">
				 	</div>
				 	<div>
				 		<p>패스워드</p>
				 		<input type="password" name="inputPw">
				 	</div>
				 	
				 	<button>로그인</button>
				</form>
				
			</c:when>	
			
			<%-- 로그인을 했다면 : 현재 로그인한 사람의 todoList 출력--%>
			<c:otherwise>
				<h1>로그인 성공!</h1>
			</c:otherwise>
			
		</c:choose>	
	
	
	</main>
	

	
	
	
	
	
	
</body>
</html>