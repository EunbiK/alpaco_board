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
			#container {
				width: 1000px;
				margin: 0px auto;
				padding: 20px;
			}
			
			#header {
				padding: 20px;
			}
			
			#content {
				width: 800px;
				margin: 0px auto;
			}
			
			img {
				width: 150px;
				height: 50px;
			}
			
			table {
				width: 800px;
				border-top: 1px solid #F2F2F2;
				border-collapse: collapse;
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
			
			.alignCenter {
				text-align: center;
			}

		</style>
	</head>
	<body>
		<div id="container">
			<div id="header">
				<img src="./resources/images/알파코-logo-02.png" />
			</div>
			<div id="content">
				<h2>신입과제 게시판</h2>
				<table>	
					<tr>
						<th width="12%">번호</th>
						<th width="48%">제목</th>
						<th width="25%">작성일</th>
						<th width="15%">조회수</th>
					</tr>
					<c:forEach items="${boardList}" var="board" varStatus="status">
						<tr>
							<td class="alignCenter"><c:out value="${status.count }"/></td>
							<td><a href="view?id=${board.id}&division=view">${board.title }</a></td>
							<td class="alignCenter"><fmt:formatDate var="formatDate" value="${board.date }" pattern="yyyy-MM-dd"/>${formatDate }</td>
							<td class="alignCenter">${board.viewCnt }</td>
						</tr>
					</c:forEach>
				</table>
				<div style="text-align: right;">
					<button onclick="location.href='insertForm'" style="padding: 2px 10px;">글쓰기</button>
				</div>
			</div>
		</div>
	</body>
</html>