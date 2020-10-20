<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@include file="header.jsp" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Insert title here</title>
 <style>
 
 
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color:/* #f4511e */white ;
    color:  #fff ;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #f4511e;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  .join{
  color: black;
  }
  .form-group{
  color: black;
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  </style>


</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container" align="center">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="main.do">BrainTrade</a>
    </div>
     <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="joinform.do">회원가입</a></li>
        <li><a href="book.do">책 보기</a></li>
        <li><a href="list.do">목록</a></li>
        <li><a href="boardform.do">글 작성</a></li>
        <li><a href="logform.do">로그인</a></li>
      </ul>
     </div>
	 </div>
  </nav>
  <hr>
  <hr>
 
 <head>
 <style>
 
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

 .create {
 border-radius: 5px;
  background-color: #f2f2f2;
  padding: 30px;
  font-size: 20;
  
  
 }
 
 
 </style>
 
 </head>

<body>
<div class="create">
<div class="container">
	<div class="col"></div>
			<div class="jumbotron" style="padding-top:20px;" align="center">
<h2 style ="text-align:center" class="join">결제화면</h2>

 <div class="form-group">
 
     <label for="bank">카드선택 </label>
    <select id="bank" name="bank">
    <option value="">카드선택</option>
      <option value="신한">신한</option>
      <option value="국민">국민</option>
      <option value="우리">우리</option>
      <option value="농협">농협</option>      
      <option value="IBK">IBK</option>
    </select>
   <hr>
 
   <div class="container" align="left">
  <form class="form-inline" action="createsuccess.do">
    <label for="cardnum">카드번호 </label> 
    <input type="text" class="form-control" id="cardnum" placeholder="****" name="cardnum"
    maxlength="4">
    <label for="pwd">-</label>
    <input type="password" class="form-control" id="cardnum" placeholder="****" name="cardnum"
    maxlength="4">
     <label for="pwd">-</label>
    <input type="password" class="form-control" id="cardnum" placeholder="****" name="cardnum"
    maxlength="4">
     <label for="pwd">-</label>
    <input type="text" class="form-control" id="cardnum" placeholder="****" name="cardnum"
    maxlength="4">
    </form>
    
    
    <form class="form-inline" action="createsuccess.do">
    <label for="cardnum">비밀번호 </label>
    <input type="password" class="form-control" id="cardnum" placeholder="비밀번호 4자리" name="cardnum"
    maxlength="4">
   <!--  <label for="pwd">-</label>
    <input type="password" class="form-control" id="cardnum" placeholder="*" name="cardnum"
    maxlength="1">
     <label for="pwd">-</label>
    <input type="password" class="form-control" id="cardnum" placeholder="*" name="cardnum"
    maxlength="1">
     <label for="pwd">-</label>
    <input type="password" class="form-control" id="cardnum" placeholder="*" name="cardnum"
    maxlength="1"> -->
    </form>
    
    <hr>
  
</div>
   <div class="container" align="left">
  <form class="form-inline" action="createsuccess.do">
    <label for="cardpwd">cvc 번호입력 </label>
      <input type="text" class="form-control" id="cardnum" placeholder="cvc 번호 3자리수 입력해주세요" name="cvcnum"
    maxlength="3">
   
    <hr>
    

    <input type="submit" value="결제">
  </form>
  </div>

</div>
</div>
</div>
</div>

</body>

<div class="col"></div>
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">문의사항</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>저희는 문의사항 24시간 접수대기입니다.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>(회사주소) Chicago, USA</p>
      <p><span class="glyphicon glyphicon-phone"></span>(회사번호) +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>(회사메일) myemail@something.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="title" name="title" placeholder="title" type="text" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">등록</button>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Image of location/map -->
<img src="/w3images/map.jpg" class="w3-image w3-greyscale-min" style="width:100%">

<footer class="container-fluid text-center">
</footer>
<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>
</body>
</html>