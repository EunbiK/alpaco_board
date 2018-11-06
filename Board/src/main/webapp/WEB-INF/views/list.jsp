<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>​

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>list</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>조회수</th>
				<th>작성일자</th>
			</tr>
			<c:forEach items="${boardList}" var="board">
				<tr>
					<td>${board.id }</td>
					<td><a href="view?id=${board.id}">${board.title }</a></td>
					<td>${board.viewCnt }</td>
					<td><fmt:formatDate var="formatDate" value="${board.date }" pattern="yyyy-MM-dd"/>${formatDate }</td>
				</tr>
			</c:forEach>
		</table>
		<button onclick="location.href='insertForm'">글쓰기</button>
	</body>
</html>