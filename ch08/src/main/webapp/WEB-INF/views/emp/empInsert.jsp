<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("입력성공")
		location.href="empSelect.html?empno=${emp.empno}";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("입력 실패 ㅋㅋ");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == -1 }">
	<script type="text/javascript">
		alert("중복됐다는데 왜 입력해 !!");
		history.go(-1);
	</script>
</c:if>
</body>
</html>