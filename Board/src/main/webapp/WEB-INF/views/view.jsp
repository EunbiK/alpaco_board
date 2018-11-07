<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>view</title>
		<style>
			img {
				width: 150px;
				height: 50px;
				margin-left: 590px;
			}
			
			table {
				width: 750px;
				border-top: 1px solid #F2F2F2;
				border-collapse: collapse;
				margin: 20px auto;
				font-family: sans-serif;
			}
			
			td {
			 border-bottom: 1px solid #e2e0e0;
			 padding: 10px;
			}
			
			.title {
				text-align: left;
				font-size: x-large;
				color: #0431B4;
			}
			
			.content {
				padding: 25px;
			}
			
			.info {
				border-bottom: hidden;
				text-align: right;
				font-size: small;
			}
		</style>
	</head>
	<body>
		<h1><img src="./resources/images/알파코-logo-02.png" /></h1>
		<font size="5" style="margin: 600px;"> <b>글 보기</b> </font>
		<table>
			<tr>
				<td width="10px">${view.id } </td>
				<td colspan="2" class="title">${view.title }</td>
			</tr>
			<tr>
				<td colspan="2" class="info">작성일 &nbsp;<fmt:formatDate var="formatDate" value="${view.date }" pattern="yyyy-MM-dd HH:mm:ss"/>${formatDate }</td>
				<td width="100px" class="info">조회수 &nbsp;${view.viewCnt }</td>
			</tr> 
			<tr>
				<td colspan="3" class="content">${view.content }</td>
			</tr>
		</table>

		<button onClick="checkButton('목록')" style="margin-left: 1150px; padding: 2px 10px;">목록</button>
		<button onClick="checkButton('수정')" style="padding: 2px 10px;">수정</button>
		<button onClick="checkButton('삭제')" style="padding: 2px 10px;">삭제</button>
		
		<script>
			function checkButton(value) {
				if (value == '목록') {
					window.location = "list";
				} else if (value == '수정') {
					window.location = "updateForm?id=" + ${view.id } ;
				} else {

					if (confirm("정말 삭제하시겠습니까?") == true){    //확인
						window.location = "delete?id=" + ${view.id};
					}else{   //취소
					    return;
					}
				}
			}	
		</script>
	</body>
</html>