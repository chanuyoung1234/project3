<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty joinuser }">
	<script type="text/javascript">
		alert("회원가입에 성공하였습니다.");
		location.href="main.do";
	</script>
</c:if>
<c:if test="${empty joinuser }">
	<script type="text/javascript">
		alert("회원가입에 실패하였습니다.");
		history.back();
	</script>
</c:if>

</body>
</html>