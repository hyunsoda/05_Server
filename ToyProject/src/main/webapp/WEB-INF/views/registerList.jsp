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
	<h1>${sessionScope.loginStudent.studentName}님의 신청강의 목록</h1>
	<c:choose>
	
	<c:when test="${empty sessionScope.regList}">
		<h1>등록된 강의가 없습니다</h1>
		<a href ="/back">뒤로가기</a>
	</c:when>
	
	<c:otherwise>
	
	<table>
		<tr>
			<th>강의 목록</th>
			<th>신청 취소</th>
		</tr>
		
		<c:forEach var="reg" items="${regList}">
			<tr>
				<td>${reg.clsName}</td>		
				<td><a href="/dropClass?regNo=${reg.regNo}"
				onclick="return confirm('정말 삭제하시겠습니까?');">취소하기</a></td>
			</tr>
			
		</c:forEach>
		
	</table>
	<a href="/back">뒤로가기</a>
	</c:otherwise>
	</c:choose>
</body>
</html>