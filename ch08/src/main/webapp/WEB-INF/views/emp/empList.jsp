<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#disp').load('deptList.html');
	});
</script></head><body>
<div class="container" align="center">
	<h2 class="text-primary">${dept.dname} 직원목록</h2>
<table class="table table-striped">
	<tr><th>사번</th><th>이름</th><th>업무</th><th>입사일</th></tr>
<c:if test="${empty empList }">
	<tr><th colspan="4">직원이 없습니다</th></tr>
</c:if>
<c:if test="${not empty empList }">
	<c:forEach var="emp" items="${empList }">
		<tr><td>${emp.empno }</td>
		<td><a href="empSelect.html?empno=${emp.empno }"
			class="btn btn-sm btn-default">${emp.ename}</a></td>
			<td>${emp.job }</td><td>${emp.hiredate }</td></tr>
	</c:forEach>
</c:if>
</table>
<a href="deptList.html" class="btn btn-info">부서목록</a>
<a href="empInsertForm.html?deptno=${dept.deptno }"
	class="btn btn-success">직원정보 입력</a>
<div id="disp"></div>
</div>
</body>
</html>