<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>​

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>list</title>
		<style>
			img {
				width: 150px;
				height: 50px;
				margin-left: 550px;
			}
			table {
				width: 800px;
				border-top: 1px solid #F2F2F2;
				border-collapse: collapse;
				margin-left: auto;
				margin-right: auto;
				margin-bottom: 20px;
			}
			
			th {
				background-color: #E6E6E6;
				border-bottom: 1px solid #F2F2F2;
				padding: 15px;
			}
			
			td {
				border-bottom: 1px solid #F2F2F2;
				padding: 10px;
			}
			
			.center {
				text-align: center;
				margin-bottom: 20px; 
			}
			
			.alignCenter {
				text-align: center;
			}

		</style>
	</head>
	<body>
		<h1><img src="./resources/images/알파코-logo-02.png" /></h1>
		<div class="center"><font size="5"> <b>신입과제 게시판</b> </font></div>
		<table>	
			<tr>
				<th width="12%">번호</th>
				<th width="48%">제목</th>
				<th width="25%">작성일</th>
				<th width="15%">조회수</th>
			</tr>
			<c:forEach items="${boardList}" var="board">
				<tr>
					<td class="alignCenter">${board.id }</td>
					<td><a href="view?id=${board.id}">${board.title }</a></td>
					<td class="alignCenter"><fmt:formatDate var="formatDate" value="${board.date }" pattern="yyyy-MM-dd"/>${formatDate }</td>
					<td class="alignCenter">${board.viewCnt }</td>
				</tr>
			</c:forEach>
		</table>
		<button onclick="location.href='insertForm'" style="margin-left: 1250px; padding: 2px 10px;">글쓰기</button>
	</body>
</html>