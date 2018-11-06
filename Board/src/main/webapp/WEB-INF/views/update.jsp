<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>update</title>
	</head>
	<body>
		<form:form modelAttribute="board" name="form" action="db?devision=update" method="post">
			<table border="1">
				<tr>
					<td><form:input path="id" readonly="true" /></td>
					<td><form:input path="title" /></td>
				</tr>
				 
				<tr>
					<td colspan="2"><form:input path="content" /></td>
				</tr>
			</table>
			<input type="submit" value="등록" />
			<input type="button" value="취소" onClick="clickEvent('취소')" />
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
					window.location = "view?id=" + ${board.id};
				}
			}
		</script>
	</body>
</html>