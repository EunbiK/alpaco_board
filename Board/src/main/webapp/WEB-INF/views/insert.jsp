<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert</title>
		<style>
			img {
					width: 150px;
					height: 50px;
					margin-left: 595px;
				}
			table {
				width: 700px;
				height: 650px;
				border-top: 1px solid #F2F2F2;
				border-collapse: collapse;
				margin: 20px auto;
				/* margin-left: auto;
				margin-right: auto;
				margin-bottom: 20px; */
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
			
			.title {
				border-radius: 5px;
				width: 500px;
				height: 20px;
				padding-left: 10px;
			}
			
			.content {
				border-radius: 2px;
				width: 550px;
				resize: none;
				overflow: hidden;
				padding: 10px;
				margin-top: 20px;
				margin-bottom: 20px;
			}
		</style>
	</head>
	<body>
		<h1><img src="./resources/images/알파코-logo-02.png" /></h1>
		<font size="5" style="margin-left: 650px;"> <b>새 글</b> </font>
		<form:form modelAttribute="board" name="form" action="db?devision=insert" method="post" onSubmit="return clickEvent('등록')">
			<table>
				<tr> 
					<th height="20px">제목</th>
					<td><form:input path="title" placeHolder="제목을 입력하세요." class="title" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><form:textarea path="content" placeHolder="내용을 입력하세요." cols="40" rows="35" class="content" /></td>
				</tr>
			</table>
			<input type="submit" value="등록" style="margin-left: 1150px; padding: 2px 10px;" />
			<input type="button" value="취소" onClick="clickEvent('취소')" style="padding: 2px 10px;" />
		</form:form>
		
		<script>
			//유효성체크
			function clickEvent(chosen) {
				if (chosen == "등록") {	//등록버튼 클릭 시

					var title = document.form.title.value;
					var content = document.form.content.value;
					
					if (title.length != 0) {
						if (content.length != 0) {
							return true;
						} else {
							alert ("내용을 입력해주세요.");
							document.form.content.focus();
							return false;
						}
					} else {
						alert ("제목을 입력해주세요.");
						document.form.title.focus();
						return false;
					}
					
				} else {	//취소버튼 클릭 시
					window.location = "list";
				}
			}
		</script>
	</body>
</html>