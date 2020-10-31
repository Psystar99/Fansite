<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
   content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0">
<title>:: IFARI | Schedule ::</title>
<meta name="keywords" >
<!--  --><link href="css/styles.css?after" rel="stylesheet" type="text/css">
<link href="css/navigataur.css?after" rel="stylesheet" type="text/css">
<link href="css/sns.css?after" rel="stylesheet" type="text/css">
<link href="css/style-bbs2.css?after" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/custom.css">
<meta name="keywords" content="ifari">
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



</head>
<body data-gr-c-s-loaded="true">
 
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


                     <li class="drop"><a href="Gallery_main.jsp" >Gallery</a>
                     <ul class="sub_menu" style="display: none;">
                        
                        <li><a href="gallery_read_video.jsp" 
                           class="">Video</a></li>
                     </ul></li>
                     <li><a href="About.jsp">About</a></li>
                     <li><a href="bbs.jsp">Letter</a></li>
                     <li><a href="Schedule.jsp" style=" color: #006400;"><b>Schedule</b></a></li>
                  </ul>
               </div>
            </div>
            <!-- End of Header -->




         <section>

            <div id="sect-main" style="margin-top:40px;">
               <div class="fullbox">

                  <div id="wrap">

                     <div id="bbs-container">
                        <div id="bbs-content">

                           <div class="bbs-content">
                              <table align="CENTER" border="0" cellpadding="0"
                                 cellspacing="0" width="100%">
                                 <tbody>
                                    <tr>
                                       <td>

                                          <div class="schedule_wrap">
                                             <!-- sehcdule title (year/month) -->
                                             <div class="schedule_tit">
                                                <h3>2019.12</h3>


                                             </div>
                                             <!-- //sehcdule title -->
                                             <!-- list -->
                                             <table class="tb_cal" cellspacing="0">
                                                <colgroup>
                                                   <col width="50">
                                                   <col width="50">
                                                   <col width="50">
                                                   <col width="50">
                                                   <col width="50">
                                                   <col width="50">
                                                   <col width="50">
                                                </colgroup>
                                                <thead>
                                                   <tr>
                                                      <th scope="col" class="sun">SUN</th>
                                                      <th scope="col">MON</th>
                                                      <th scope="col">TUE</th>
                                                      <th scope="col">WED</th>
                                                      <th scope="col">THU</th>
                                                      <th scope="col">FRI</th>
                                                      <th scope="col">SAT</th>
                                                   </tr>
                                                </thead>
                                                <tbody>

                                                   <tr>

                                                      <td class="sun"><div class="sch_off">
                                                            <span class="day">1</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">2</span>
                                                         </div></td>

                                                      <td><div class="sch_on">
                                                            <span class="day">3</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">4</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">5</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">6</span>
                                                         </div></td>

                                                      <td><div class="sch_on">
                                                            <span class="day">7</span>
                                                         </div></td>

                                                   </tr>

                                                   <tr>

                                                      <td class="sun"><div class="sch_off">
                                                            <span class="day">8</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">9</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">10</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">11</a></span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">12</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">13</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">14</span>
                                                         </div></td>

                                                   </tr>

                                                   <tr>

                                                      <td class="sun"><div class="sch_off">
                                                            <span class="day">15</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">16</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">17</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">18</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">19</span>
                                                         </div></td>

                                                      <td><div class="sch_on">
                                                            <span class="day">20</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">21</span>
                                                         </div></td>

                                                   </tr>

                                                   <tr>

                                                      <td class="sun"><div class="sch_on">
                                                            <span class="day">22</span>
                                                         </div></td>

                                                      <td><div class="sch_on">
                                                            <span class="day">23</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">24</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">25</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">26</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">27</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">28</span>
                                                         </div></td>

                                                   </tr>

                                                   <tr>

                                                      <td class="sun"><div class="sch_off">
                                                            <span class="day">29</span>
                                                         </div></td>

                                                      <td><div class="sch_off">
                                                            <span class="day">30</span>
                                                         </div></td>

                                                      <td><div class="sch_on">
                                                            <span class="day">31</span>
                                                         </div></td>

                                                      <td></td>

                                                      <td></td>

                                                      <td></td>

                                                      <td></td>

                                                   </tr>

                                                </tbody>
                                             </table>
                                             <!-- //list -->

                                             <div id="sche-list">
                                                <ul>
                                                   <li><strong>3 TUE</strong>
                                                      <p class="sche-text">dj분영님 생일파티</p></li>
                                                   <li><strong>7 SUN</strong>
                                                      <p class="sche-text">내 손안의 작은 라디오 출연</p></li>
                                                   <li><strong>20 FRI</strong>
                                                      <p class="sche-text">
                                                         목욕재개<br>팬미팅 리허설
                                                      </p></li>

                                                   <li><strong>22 Sun</strong>
                                                      <p class="sche-text">이초록 BirthDay</p></li>
                                                   <li><strong>23 Mon</strong>
                                                      <p class="sche-text">초록팬클럽 IFARI 연말파티 'Greem
                                                         Christmas'</p></li>
                                                   <li><strong>31 TUE</strong>
                                                      <p class="sche-text">2019 마무리 vlog 공개</p></li>
                                                </ul>
                                             </div>
                                             <!--sche-list-->

                                             <div class="clear"></div>



                                             <div style="height: 20px">&nbsp;</div>
                                          </div>

                                       </td>
                                    </tr>
                                 </tbody>

                              </table>
                           </div>

                        </div>
                     </div>

                  </div>



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
                  target="_blank" class="sb no-border facebook">Green Facebook</a> <a
                  href="https://www.youtube.com/channel/UC5hZCpz3AVaZoAczNIPfYjg/"
                  target="_blank" class="sb no-border youtube">Green Youtube</a> <a
                  href="https://www.instagram.com/hey_greeeeen/" target="_blank"
                  class="sb no-border instagram">Green Instagram</a>

            </div>
            <div class="clear"></div>
         </footer>

      </div>
      <!-- main-->
   
   <!--container-->


</body>
<span class="gr__tooltip"><span class="gr__tooltip-content"></span><i
   class="gr__tooltip-logo"></i><span class="gr__triangle"></span></span>
</html>