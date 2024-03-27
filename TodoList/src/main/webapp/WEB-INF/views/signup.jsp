<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입</title>
	<link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
	<main>
		<h1>회원가입</h1>
	
		<form action="/signup" method="post" class="signup-form" onsubmit="return validate()"> 
		<%-- onsubmit="return validate()" : 가입하기 버튼을 누르면 onsubmit이라는 버튼이 연결된 함수가 실행됨
			false가 return되면 submit안된다 --%>
			<p>아이디</p>
			<input type="text" name="inputId" id="inputId" autocomplete="off" required> <%-- autocomplete="off : 자동완성 끄기 /    required : 무조건 작성하게하는 거--%>
			<span id="idMsg">영어 소문자, 숫자, 6 ~ 14글자</span>
			
			<p>비밀번호</p>
			<input type="password" name="inputPw" id="inputPw" required>
			
			<p>비밀번호 확인</p>
			<input type="password" name="inputPw2" id="inputPw2" required>
			<span id="pwMessage"></span>
			
			<p>닉네임</p>
			<input type="text" name="inputName" id="inputName" required>
			<span id="nameMessage"></span>
			
			<br>
			
			<button>가입하기</button>
		</form>
	</main>
	
	<%-- 해당 jsp 파일에서 사용할 javascript 코드가 작성된 js 파일 연결하기 (webapp 기준임) --%>
	<script src="/resources/js/signup.js"></script> 
</body>
</html>