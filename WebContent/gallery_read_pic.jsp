<%@ page import="java.util.*"%>
<%
   request.setCharacterEncoding("UTF-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
   content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0">
<!---->
<title>:: IFARI | Gallery ::</title>
<meta name="keywords" content="ifari">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/styles-index.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/custom.css">
<link href="css/navigataur.css" rel="stylesheet" type="text/css">
<link href="css/gallery.css" rel="stylesheet" type="text/css">
<link href="css/sns.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/custom.css">
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
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-media.js"></script>



</head>




<body>

   <div id="wrapper">



    
         <div class="main">





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


                     <li class="drop"><a href="Gallery_main.jsp"
                        style="color: #006400;"><b>Gallery</b></a>
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

               <div id="sect-main"
                  style="padding-top: 40px; padding-bottom: 40px;">
                  <div class="fullbox">
                     <%
                        List<String> styles = (List) request.getAttribute("styles");
                        String sagin = "";
                        for (int i = 0; i < styles.size(); i++) {
                           if (i == 0) {
                              sagin = styles.get(i);
                           }
                        }
                     %>
                     <center>
                        <img src=<%=sagin%>
                           style="width: 50%; padding: 20px; background-color: #f9f3de">


                        <div>
                           <%
                              for (int i = 0; i < styles.size(); i++) {

                                 String str = styles.get(i);
                                 if (i != 0) {
                                    out.println("<p>" + str + "</p>");
                                 }
                              }
                           %>
                        </div>
                     </center>
                  </div>
                  <!--fullbox-->
               </div>
               <!--sect-main-->

            </section>





            <footer>
               <div class="snsicon">

                  <a href="https://twitter.com/mif_ffy?s=09" target="_blank"
                     class="sb no-border twitter">@green</a> <a
                     href="https://www.facebook.com/profile.php?id=100007216653828"
                     target="_blank" class="sb no-border facebook">Green Facebook</a>
                  <a
                     href="https://www.youtube.com/channel/UC5hZCpz3AVaZoAczNIPfYjg/"
                     target="_blank" class="sb no-border youtube">Green Youtube</a> <a
                     href="https://www.instagram.com/hey_greeeeen/" target="_blank"
                     class="sb no-border instagram">Green Instagram</a>

               </div>
               <div class="clear"></div>
            </footer>





         </div>
         <!-- main-->
   
   </div>
   <!--wrapper-->


</body>

</html>