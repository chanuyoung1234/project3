<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.password.value != frm.password2.value) {
			alert("암호가 일치하지 않습니다"); frm.password2.focus();
			frm.password2.value = ""; return false;
		}
	}
</script></head><body>
<div class="container">
	<h2>암호 확인</h2>
<form action="${path}/delete" name="frm" onsubmit="return chk()">
	<input type="hidden" name="num" value="${board.num }">
	<input type="hidden" name="password" value="${board.password }">
	<input type="hidden" name="pageNum" value="${pageNum }">
<table class="table table-bordered">
	<tr><td>암호</td><td><input type="password" name="password2"
		required="required" autofocus="autofocus"></td></tr>	
	<tr><td colspan="2"><input type="submit"></td></tr>
</table>
</form>
</div>
</body>
</html>