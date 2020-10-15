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
<c:if test="${joinuser != null }">
<script type="text/javascript">
alert('로그인에 성공하였습니다.');
location.href="main.do";
</script>
</c:if>
<c:if test="${joinuser == null }">
<script type="text/javascript">
alert('로그인에 실패하였습니다.아이디와 비밀번호를 확인해주세요.');
history.go(-1);
</script>
</c:if>
</body>
</html>