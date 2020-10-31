<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/sns.css" rel="stylesheet" type="text/css">
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
<title>:: IFARI | Letter ::</title>
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


							<li class="drop"><a href="Gallery_main.jsp">Gallery</a>
							<ul class="sub_menu" style="display: none;">
								
								<li><a href="gallery_read_video.jsp" 
									style="background-color: #white; ">Video</a></li>
							</ul></li>
							<li><a href="About.jsp">About</a></li>
							<li><a href="bbs.jsp" style=" color: #006400;"><b>Letter</b></a></li>
							<li><a href="Schedule.jsp">Schedule</a></li>
						</ul>
					</div>
				</div>
				<!-- End of Header -->

<div class="container"style="padding:40px; width:85%">
<div class="row">
<form method="post" action="board-writeAction.jsp">
<table class="table table-striped"style="text-align : center; /*border:1px solid #ECE6CC*/" > 
<thead>
<tr>
	<th colspan="2" style="background-color:#ECE6CC; text-align:center;"><font color="black">LETTER FORM</font></th>
</tr>
</thead>
<tbody>
<tr>
<td><input type="text" class="form-contorl" placeholder="글 제목" name="bbsTitle" maxlength="50" style=" width:100%;" ></td>
</tr>
<tr>
<td><textarea  class="form-contorl" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height:350px;width:100%;"></textarea></td>

</tr>
</tbody>

</table>
<input type="submit" value="작성"  class="btn btn-primary pull-right">
</form>

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

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>