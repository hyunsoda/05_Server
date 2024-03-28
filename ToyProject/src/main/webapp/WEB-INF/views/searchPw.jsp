<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<form action="/searchPw" method="post">
				<h1>아이디 찾기</h1>
				
				<p>학번을 입력해주세요</p>
				<input type="text" name="inputNo" required>
				
				<p>전공을 입력해주세요</p>
				<input type="text" name="inputMajor" required>
				<br>
				<br>
				<button>아이디 찾기</button>
			</form>
			<br>
			
			<a href ="/back" class="aTag">뒤로가기</a>
		</div>
	
	
	</main>

</body>
</html>