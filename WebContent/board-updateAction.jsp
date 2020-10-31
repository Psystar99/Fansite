<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "bbs.BbsDAO"%>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/sns.css" rel="stylesheet" type="text/css">
<link href="css/navigataur.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
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


							<li class="drop"><a href="Gallery_main.jsp"><b>Gallery</b></a>
							<ul class="sub_menu" style="display: none;">
								
								<li><a href="gallery_read_video.jsp" 
									style="background-color: #white; ">Video</a></li>
							</ul></li>
							<li><a href="About.jsp">About</a></li>
							<li><a href="bbs.jsp" style=" color: #006400;">Letter</a></li>
							<li><a href="Schedule.jsp">Schedule</a></li>
						</ul>
					</div>
				</div>
				<!-- End of Header -->
	
	
	<%
	if(userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	}
	int bbsID=0;
	if(request.getParameter("bbsID")!=null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if(bbsID==0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글.')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	if(!userID.equals(bbs.getUserID())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}	else {
if(request.getParameter("bbsTitle") == null ||request.getParameter("bbsContent") ==null
||request.getParameter("bbsTitle").equals("")||request.getParameter("bbsContent").equals("")) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('입력이 안된 사항이 있습니다.')");
	script.println("history.back()");
	script.println("</script>");
}else {
	BbsDAO bbsDAO = new BbsDAO();
	int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"),request.getParameter("bbsContent"));
	if(result ==-1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글수정에 실패했습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글이 수정되었습니다.')");
		script.println("location.href='bbs.jsp'");
		script.println("</script>");
	}
}}
%>
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