<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/sns.css" rel="stylesheet" type="text/css">
<link href="css/navigataur.css" rel="stylesheet" type="text/css">
<title>:: IFARI | Welcome ::</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('.drop').hover(function() {
			$('.sub_menu').show();
		}, function() {
			$('.sub_menu').hide();
		});
	});
</script>
<script type="text/javascript">
function gotologin(){
	location.href="login.jsp"
}
function gotomain(){
	location.href="main.jsp"
}
</script>
<style type="text/css">
div{
text-align:center;
}
</style>
</head>
<body>
<div class="header clearfix">
					<!-- 상단 고정창  -->

					<div class="divide a">
						<!-- 메뉴 왼쪽 코드 시작 -->

						<%
							String userID = null;
							if (session.getAttribute("userID") != null) {
								userID = (String) session.getAttribute("userID");
							}
						%>
						<%
							if (userID == null) {//로그인을 안 한 경우
						%>
						<input type="checkbox" id="toggle"> <label for="toggle"
							class="toggle" onclick=""></label>
						<ul class="menu">
							<!-- 메뉴버튼들: 아래 li는 하나씩 -->
							<li><a href="login.jsp">Log in</a></li>
							<li><a href="joinus_agree.jsp" style=" color: #006400;"><b>Join us</b></a></li>
						</ul>
						<%
							} else {//로그인을 한 경우
						%>
						<input type="checkbox" id="toggle"> <label for="toggle"
							class="toggle" onclick=""></label>
						<ul class="menu">
							<!-- 메뉴버튼들: 아래 li는 하나씩 -->
							<li><a href="logoutAction.jsp">Log out</a></li>
						</ul>
						<%
							}
						%>
						<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
						<script src="js/bootstrap.js"></script>
					</div>
					<div class="divide b">
						<a href="main.jsp">Ifari</a>
					</div>
					<div class="divide c">
						<!-- 메뉴버튼들 -->
						<input type="checkbox" id="toggle"> <label for="toggle"
							class="toggle" onclick=""></label>
						<ul class="menu" id="dropdown">
							<!-- 메뉴버튼들: 아래 li는 하나씩 -->


							<li class="drop"><a href="Gallery_main.jsp">Gallery</a>
							<ul class="sub_menu" style="display: none;">
								
								<li><a href="gallery_read_video.jsp" 
									style="background-color: #white; ">Video</a></li>
							</ul></li>
							<li><a href="About.jsp">About</a></li>
							<li><a href="bbs.jsp">Letter</a></li>
							<li><a href="Schedule.jsp">Schedule</a></li>
						</ul>
					</div>
				</div>
				<!-- End of Header -->
<div>
<br>
<div style="padding : 80px;">
<img src="./image/회원가입완료.png" style="margin-left: auto; margin-right: auto; display: block;" >
<h1>회원가입이 완료되었습니다.<br>환영합니다.</h1><br>
<button class="btn btn-primary" onclick="gotologin();" type="button"> 로그인하기</button>
<button class="btn btn-primary" onclick="gotomain();" type="button">메인으로</button>
</div>
</div>

	<!-- 아래 고정창 -->
	<footer>
		<div class="snsicon">
	<!-- sns창 전체 -->
		<a href="https://twitter.com/mif_ffy?s=09" target="_blank" class="sb no-border twitter">@green</a>
		<a href="https://www.facebook.com/profile.php?id=100007216653828" target="_blank" class="sb no-border facebook">Green Facebook</a>
		<a href="https://www.youtube.com/channel/UC5hZCpz3AVaZoAczNIPfYjg/"	target="_blank" class="sb no-border youtube">Green Youtube</a> 
		<a href="https://www.instagram.com/hey_greeeeen/" target="_blank" class="sb no-border instagram">Green Instagram</a>	
		</div>
		<div class="clear"></div>
	</footer>
</body>
</html>