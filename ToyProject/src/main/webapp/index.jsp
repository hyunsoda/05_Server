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
		
	
			<%-- 로그인 하지 않았을 때 --%>
			<c:choose>
				<c:when test="${empty sessionScope.loginStudent}">
				<h1>수강신청</h1>
					<form action="/login" method="post">
						<div>
							<p>아이디</p>
							<input type="text" name="loginId" id="loginId">
						</div>
						<div>
							<p>비밀번호</p>
							<input type="password" name="loginPw" id="loginPw">
						</div>
						
						<button>로그인</button>
						
						<a href="/signup">회원가입</a>
						<a href="/searchPw">비밀번호 찾기</a>
						
					
					</form>
				</c:when>
			
				<%--로그인 했을 때 --%>
				<c:otherwise>
					<h1>${sessionScope.loginStudent.studentName}님 수강신청</h1>
					<p>본인 전공 강의만 수강신청 가능합니다!</p>
				<c:choose>
					<c:when test="${empty classList}">
						<h2>개설된 강의가 없습니다!</h2>
						<div>
							<a href="/updateProfile">학과 수정</a>
						</div>
						<div>
							<a href="/logout">로그아웃</a>
						</div>
					</c:when>
					
					<c:otherwise>
					
						<table>
							<tr>
								<th>강의명</th>
								<th> </th>
							</tr>	
							
							<c:forEach var="cls" items="${classList}">
							<tr>
							<form action ="register" method="post">
								<td>${cls.clsName}</td>
								<input name="clsName" value="${cls.clsName}" type="hidden"> 
								<td><button>신청하기</button></td>
								
							</form>	
							</tr>
							</c:forEach>
						</table>
						
								<div>
								<a href="/registerList">전체 내역 조회</a>
								</div>
								
								<div>
								<a href="/updateProfile">학과 수정</a>
								</div>
								
								<div>
									<a href="/logout">로그아웃</a>
								</div>
					</c:otherwise>
				
				</c:choose>
				
			
				
				</c:otherwise>
				
	</c:choose>
		
		
		
		
	
	</main>
	
	<c:if test="${not empty sessionScope.message}">
		<script>
			alert('${message}');
		</script>
		<c:remove var="message" scope="session"/>
	</c:if>
	
	
</body>
</html>