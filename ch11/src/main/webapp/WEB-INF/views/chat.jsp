<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<style type="text/css">
	table {height: 450px; border: 2px solid green;
		table-layout:fixed; overflow: hidden;}
	#chatMessage {height: 400px; overflow: scroll;}
</style>
<script type="text/javascript">
	var websocket; // 웹소켓 변수
	$(function(){
		$('#enterBtn').click(function(){ connect(); });
		$('#exitBtn').click(function(){ disconnect(); });
		$('#sendBtn').click(function(){ send(); });
		$('#message').keypress(function(){
			// IE면? IE key 값 IE아닌 key값
			var keycode = event.KeyCode?event.keyCode:event.which;
			if (keycode==13) { // enter를 눌렀으면
				send();
			}
			event.stopPropergation();  // 이벤트를 전달하지 마라
		});
	});
	function send(){
		var nickname=$('#nickname').val(); // 별명
		var msg = $('#message').val();		// 메세지
		websocket.send(nickname+"=>"+msg);	// 별명과 메세지를 묶어서 보내기
		$('#message').val(""); // 입력한 메세지 삭제
	}
	function connect() {
		websocket=new WebSobSocket("ws://172.30.1.15:8888/ch11/chat-ws.do");
		websocket.onopen = onOpen;
		onWebsocket.onmesage=onMessage;
		websocket.onclose = onClose;
	}
	function onOpen(){
		var nickname=$('#nickname').val();
		appendMessage(nickname+"님이 입장하였습니다.");
	}
	function onMessage() {
		var msg = event.data; // 메세지는 event의 data로 들어온다
		appendMessage(msg);
	}
	function onClose() {
		var nickname=$('#nickname').val();
		appendMessage(nickname+"님이 퇴장하였습니다.");
	}
	function appendMessage(msg) {
		$('#chatMessage').append(msg+'<br>');
		// scxrollBar 아래로 내려라
		var objDiv = document.getElementById("chatMessage");
		objDiv.scrollTop = objDiv.scrollHeight
	}
	function disconnect() {
		websocket.close();
	}
</script>
<div class="container">
<table class="table table-hover">
	<tr><td>별명</td><td><input type="text" id="nickname">
	<input type="button" id="enterBtn" value="입장" 
			class="btn btn-sm btn-info">
	<input type="button" id="exitBtn" value="퇴장"
			class="btn btn-sm btn-warning">
	<tr><td>메세지</td><td><input type="text" id="message">
		<input type="button" id="sendBtn" value="전송"
			class="btn btn-success btn-sm"></td></tr>
	<tr><td>대화영역</td><td><div id="chatMessage"></div></td></tr>
</table>
</div>
</body>
</html>