<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.UserDTO" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/sns.css" rel="stylesheet" type="text/css">
<link href="css/navigataur.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>:: IFARI | Login ::</title>
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
							<li><a href="login.jsp"style=" color: #006400;">Log in</a></li>
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
							<li><a href="bbs.jsp">Letter</a></li>
							<li><a href="Schedule.jsp">Schedule</a></li>
						</ul>
					</div>
				</div>
				<!-- End of Header -->
<%

	if(session.getAttribute("userID")!=null){
		userID=(String) session.getAttribute("userID");
	}
	if(userID!=null){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href='main.jsp");
		script.println("</script>");
	}
	UserDAO userDAO=new UserDAO();
	int result=userDAO.login(user.getUserID(),user.getUserPassword());
	if(result==1){
		session.setAttribute("userID", user.getUserID());
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	else if(result==0){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result==-1){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('아이디가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result==-2){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('데이터 베이스 오류가 발생했습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	
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