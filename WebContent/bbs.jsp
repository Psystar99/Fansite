<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<title>:: IFARI | Letter ::</title>
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
<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: none;
}

.line {
	border-bottom: 1px solid #eeeeee;
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


				<li class="drop"><a href="Gallery_main.jsp">Gallery</b></a>
					<ul class="sub_menu" style="display: none;">

						<li><a href="gallery_read_video.jsp"
							style="background-color: #white;">Video</a></li>
					</ul></li>
				<li><a href="About.jsp">About</a></li>
				<li><a href="bbs.jsp" style="color: #006400;"><b>Letter</b></a></li>
				<li><a href="Schedule.jsp">Schedule</a></li>
			</ul>
		</div>
	</div>
	<!-- End of Header -->



	<%
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));

		}
	%>

	<div class="container">
		<div class="row">

			<form method="post" action="board-write.jsp">
				<input type="submit" value="작성" class="btn btn-primary pull-right"
					style="margin-top: 13px; margin-bottom: 13px;">


				<table class="table table-striped"
					style="text-align: center; border: 1px solid #ECE6CC">
					<thead>
						<tr>
							<th style="background-color: #ECE6CC; text-align: center;"><font
								color="black">번호</font></th>
							<th style="background-color: #ECE6CC; text-align: center;"><font
								color="black">제목</font></th>
							<th style="background-color: #ECE6CC; text-align: center;"><font
								color="black">작성자</font></th>
							<th style="background-color: #ECE6CC; text-align: center;"><font
								color="black">작성일</font></th>
						</tr>
					</thead>
					<tbody>

						<%
							BbsDAO bbsDAO = new BbsDAO();
							ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
							for (int i = 0; i < list.size(); i++) {
						%>

						<tr>
							<td class="line"><%=list.get(i).getBbsID()%></td>
							<td class="line"><a
								href="board-view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></a></td>
							<td class="line"><%=list.get(i).getUserID()%></td>
							<td class="line"><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
						+ list.get(i).getBbsDate().substring(14, 16) + "분"%></td>
						</tr>
						<%
							}
						%>
					</tbody>

				</table>
				<%
					if (pageNumber != 1) {
				%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>"
					class="btn btn-success btn-arraw-left">이전</a>
				<%
					}
					if (bbsDAO.nextPage(pageNumber + 1)) {
				%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>"
					class="btn btn-success btn-arraw-left">다음</a>
				<%
					}
				%>
			</form>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<!-- 아래 고정창 -->
	<footer>
		<div class="snsicon">
			<!-- sns창 전체 -->
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
</html>