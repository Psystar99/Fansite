<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Pragma" content="no-cache">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0">
<title>:: IFARI:About ::</title>
<meta name="keywords" content="ifari">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/about.css" rel="stylesheet" type="text/css">
<link href="css/sns.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="css/custom.css">
<!-- �ϴ� ����â -->
<link href="css/navigataur.css" rel="stylesheet" type="text/css">
<!-- ��� ����â �ΰ� ���� �������� -->
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


<!-- Add fancyBox main JS and CSS files -->

<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-media.js"></script>
</head>
<body>
<div class="header clearfix">
					<!-- ��� ����â  -->

					<div class="divide a">
						<!-- �޴� ���� �ڵ� ���� -->

						<%
							String userID = null;
							if (session.getAttribute("userID") != null) {
								userID = (String) session.getAttribute("userID");
							}
						%>
						<%
							if (userID == null) {//�α����� �� �� ���
						%>
						<input type="checkbox" id="toggle"> <label for="toggle"
							class="toggle" onclick=""></label>
						<ul class="menu">
							<!-- �޴���ư��: �Ʒ� li�� �ϳ��� -->
							<li><a href="login.jsp">Log in</a></li>
							<li><a href="joinus_agree.jsp">Join us</a></li>
						</ul>
						<%
							} else {//�α����� �� ���
						%>
						<input type="checkbox" id="toggle"> <label for="toggle"
							class="toggle" onclick=""></label>
						<ul class="menu">
							<!-- �޴���ư��: �Ʒ� li�� �ϳ��� -->
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
						<!-- �޴���ư�� -->
						<input type="checkbox" id="toggle"> <label for="toggle"
							class="toggle" onclick=""></label>
						<ul class="menu" id="dropdown">
							<!-- �޴���ư��: �Ʒ� li�� �ϳ��� -->


							<li class="drop"><a href="Gallery_main.jsp" >Gallery</a>
							<ul class="sub_menu" style="display: none;">
								
								<li><a href="gallery_read_video.jsp" 
									class="">Video</a></li>
							</ul></li>
							<li><a href="About.jsp" style="color: #006400;"><b>About</b></a></li>
							<li><a href="bbs.jsp">Letter</a></li>
							<li><a href="Schedule.jsp">Schedule</a></li>
						</ul>
					</div>
				</div>
				<!-- End of Header -->
				<section>
	<div id="sect-main">
<div class="fullbox">
<br>
		<div id="content"></div>
		<div id="sidebar1">
		
			�Ұ�
			</p>
		</div>
		</div>
	</div>
	</section>
	<footer>
		<!-- �Ʒ� ����â -->

		<div class="snsicon">
			<!-- snsâ ��ü -->
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

</body>
<span class="gr__tooltip"> <span class="gr__tooltip-content"></span>
	<i class="gr__tooltip-logo"></i> <span class="gr__triangle"></span>
</span>
</html>
