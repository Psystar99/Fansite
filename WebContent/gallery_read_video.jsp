<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0">
<!---->
<title>:: IFARI | Gallery ::</title>
<meta name="keywords" content="ifari">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/video.css" rel="stylesheet" type="text/css">
<link href="css/sns.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link href="css/navigataur.css" rel="stylesheet" type="text/css">

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

<!---->


</head>


<body data-gr-c-s-loaded="true">



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
							<li><a href="joinus_agree.jsp">Join us</a></li>
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


							<li class="drop"><a href="Gallery_main.jsp" style="color: #006400;" ><b>Gallery</b></a>
							<ul class="sub_menu" style="display: none;">
								
								<li><a href="gallery_read_video.jsp" 
									style="background-color: white; color: #006400;">Video</a></li>
							</ul></li>
							<li><a href="About.jsp">About</a></li>
							<li><a href="bbs.jsp">Letter</a></li>
							<li><a href="Schedule.jsp">Schedule</a></li>
						</ul>
					</div>
				</div>
				<!-- End of Header -->


	<section>


		<div id="sect-main">

			<div class="movie">
				<iframe allowfullscreen="" frameborder="0" height="360"
					src="//www.youtube.com/embed/i-uw" width="640"></iframe>
			</div>
				<center>
				
						<h3>건담만들기</h3>2019.8.8
				
				</center>
				<hr>


			<div id="video-list">
				<ul>

					<li><a href="https://youtu.be/s"><img
							src="image/gallery/video/video_child3.png"></a>
						<p>
							헤나<br> 2019.10.22
						</p></li>

					<li><a href="https://youtu.be/jKQE"><img
							src="image/gallery/video/video_child1.png"></a>
						<p>
							뚜벅이의 생활<br> 2019.05.16
						</p></li>

					<li><a href="https://youtu.be/GU"><img
							src="image/gallery/video/video_child2.png"></a>
						<p>
							묘기성공 <br> 2018.12.10
						</p></li>


				</ul>
				<div class="clear"></div>
			</div>
			<!--video-list-->



		</div>
	</section>

	<footer>

		<div class="snsicon">

			<a href="https://twitter.com/mif_ffy?s=09" target="_blank"
				class="sb no-border twitter">@green</a> <a
				href="https://www.facebook.com/profile.php?id=100007216653828"
				target="_blank" class="sb no-border facebook">Green Facebook</a> <a
				href="https://www.youtube.com/channel/UC5hZCpz3AVaZoAczNIPfYjg/"
				target="_blank" class="sb no-border youtube">Green Youtube</a> <a
				href="https://www.instagram.com/hey_greeeeen/" target="_blank"
				class="sb no-border instagram">Green Instagram</a>

		</div>
		<div class="clear"></div>
	</footer>


	<!-- main-->


	<!--container-->



</body>
<span class="gr__tooltip"><span class="gr__tooltip-content"></span><i
	class="gr__tooltip-logo"></i><span class="gr__triangle"></span></span>
</html>