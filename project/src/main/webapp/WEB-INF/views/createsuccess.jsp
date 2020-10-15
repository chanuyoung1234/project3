<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
<c:if test="${not empty createuser }">
	<script type="text/javascript">
		alert("결제가 완료되었습니다.");
		location.href="main.do";
	</script>
</c:if>
<c:if test="${empty createuser}">
	<script type="text/javascript">
		alert("결제 실패하였습니다..");
		history.go(-1);
	</script>
</c:if>
</body>
</html>