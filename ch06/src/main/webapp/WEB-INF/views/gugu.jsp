<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html><html><head><meta charset="EUC-KR"></head>
<title>Insert title here</title>
<h2>구구단${num }단</h2>
<body>
<c:forEach var="i" begin="1" end="9">
	${num } * ${i } = ${num*i }<br>
</c:forEach>
</body>
</html>