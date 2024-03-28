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
		<form action="/updateProfile" method="post">
		<p>전과하신 과의 이름을 입력해주세요</p>
		<br>
		<input type="text" name="newMajor" id="newMajor" required>
		
		<button>정보 수정하기</button>
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