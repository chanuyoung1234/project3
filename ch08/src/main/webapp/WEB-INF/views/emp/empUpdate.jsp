<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("대박! 수정됐네");
		location.href="empSelect.html?empno=${emp.empno}";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("으이그!! 실패네");
		history.go(-1);
	</script>
</c:if>
</body>
</html>