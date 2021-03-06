<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                     <li><a href="login.jsp"style=" color: #006400;"><b>Log in</b></a></li>
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
                     <li><a href="bbs.jsp">Letter</a></li>
                     <li><a href="Schedule.jsp">Schedule</a></li>
                  </ul>
               </div>
            </div>
            <!-- End of Header -->
<div class="container">
   <div class="col-lg-4"></div>
   <div class="col-lg-4">
      <div class="jumbotron" style="padding-top:20px;">
         <form method="post" action="loginAction.jsp">
            <h3 style="text-align : center;">로그인</h3>
            <div class="form-group">
               <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
            </div>
            <div class="form-group">
               <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
            </div>
            <input type="submit" class="btn btn-primary form-control" value="로그인">
         </form>
   </div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</div>

   <!-- 아래 고정창 -->
   <footer>
      <div class="snsicon">
   <!-- sns창 전체 -->
      <a href="https://twitter.com/mif_ffy?s=09" target="_blank" class="sb no-border twitter">@green</a>
      <a href="https://www.facebook.com/profile.php?id=100007216653828" target="_blank" class="sb no-border facebook">Green Facebook</a>
      <a href="https://www.youtube.com/channel/UC5hZCpz3AVaZoAczNIPfYjg/"   target="_blank" class="sb no-border youtube">Green Youtube</a> 
      <a href="https://www.instagram.com/hey_greeeeen/" target="_blank" class="sb no-border instagram">Green Instagram</a>   
      </div>
      <div class="clear"></div>
   </footer>
</body>
</html>