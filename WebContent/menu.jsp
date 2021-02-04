<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<nav>
		<ul>
			<%-- <c:if test="${sessionId != null }">--%>
				<li><a href="memberUpdate.jsp?id=<c:out value="${sessionId}"/>">회원수정</a></li> 
			
			<c:if test="${sessionId == 'admin' }">
				<li><a href="memberList.jsp">회원리스트</a></li>
			</c:if>
			<c:if test="${sessionId != null }">
				<li><a href="logout.jsp">로그아웃</a></li>
			</c:if>
		</ul>
	
	</nav>
</body>
</html>