<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>view</title>
	</head>
	<body>
		
		<table border="1">
			<tr>
				<td> ${view.id } </td>
				<td colspan=4>${view.title }</td>
			</tr>
			<tr>
				<td colspan=2>조회 수</td>
				<td>${view.viewCnt }</td>
				<td>작성일자</td>
				<td><fmt:formatDate var="formatDate" value="${view.date }" pattern="yyyy-MM-dd HH:mm:ss"/>${formatDate }</td>
			</tr> 
			<tr>
				<td colspan="5">${view.content }</td>
			</tr>
		</table>

		<button onClick="checkButton('목록')">목록</button>
		<button onClick="checkButton('수정')">수정</button>
		<button onClick="checkButton('삭제')">삭제</button>
		
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