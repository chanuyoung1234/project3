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


<c:forEach var="board" items="${board }">
	<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">${board.title }</h5>
    <p class="card-text">${board.content }</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
</c:forEach>

<c:forEach var="board" items="${board }">
	<div class="card" style="width: 18rem;">
	<div class="card-body">
	
	</div>
</div>
</c:forEach>
   
</body>
</html>