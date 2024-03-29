<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
	<main> 
		<div class="a">
			<form action="/searchPw" method="post" onsubmit="return validate()">
				<h1>아이디 찾기</h1>
				
				<p>학번을 입력해주세요</p>
				<input type="text" name="inputNo" id="inputNo" required>
				<br>
				<span id="numText"></span>
				<p>전공을 입력해주세요</p>
				<input type="text" name="inputMajor" id="inputMajor" required>
				<br>
				<span id="majorText"></span>
				<br>
				<br>
				<button id="idBtn">아이디 찾기</button>
				
			</form>
			<br>
			
			<a href ="/back" class="aTag">뒤로가기</a>
		</div>
	
	
	</main>

		<c:if test="${not empty sessionScope.message}">
			<script>
			alert("${message}");
			</script>	
			<c:remove var="message" scope="session"/>
		</c:if>
<script src="/resources/js/searchId.js"></script> 			
</body>
</html>