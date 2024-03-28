<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main>
	<h1>회원가입</h1>
	
	<form action="/signup" method="post">
		<p>아이디</p>
		<input type="text" name="inputId" autocomplete="off" required>
	
		<p>비밀번호</p>
		<input type="password" name="inputPw" id="inputPw" required>
		
		<p>비밀번호 확인</p>
		<input type="password" name="inputPw2" id="inputPw2" required>
		<span id="pwMessage"></span>
		
		<p>이름</p>
		<input type="text" name="inputName" id="inputName" required>
		
		<p>전공</p>
		<input type="text" name="inputMajor" id="inputMajor" required>
		
		<button>회원가입하기</button>
	</form>
	
	
</main>	

	<c:if test="${not empty sessionScope.message}">
		<script>
			alert('${message}');
		</script>
		<c:remove var="message" scope="session"/>
	</c:if>
</body>
</html>