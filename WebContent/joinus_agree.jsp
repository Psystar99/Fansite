<!-- 회원가입 첫 화면 - 이용약관, 개인정보 수집 및 이용, 프로모션안내 메일 수신(선택)에 동의하는지 확인  -->
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
<title>:: IFARI | Agree ::</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
 <!-- 확인 취소 상자 css -->
 <style>
 .div_in_text{
 margin-top:3px;
 color:white;
 text-align:center;
 vertical-align:middle;
 font-size:15pt;
 }
 .button_style{
    display: inline-block;
    width: 120px;
    height : 50px;
    padding: auto;
    font-weight: 700;
    color: white;
  	background-color: lightgray;
 	border-color: lightgray;
    text-align:center;
}
 .button_style2{
    display: inline-block;
    width: 120px;
    height : 50px;
    padding: auto;
    font-weight: 700;
    color: white;
  	background-color: #0a620a;
 	border-color: #0a620a;
    text-align:center;
}
.logoposition{
text-align:center;
}
 </style>
 
</head>

<body>
<!-- 로고 이미지 가운데 삽입 -->
<div class="logoposition">
<a href="main.jsp"><img src="image/logo.png" alt="Ifari" width="150px;"></a>
<br>
</div>

<div style="padding: 30px 200px 0 200px;">
<form action="joinus.jsp" method="get" id="form1">

<!-- 이용약관, 개인정보 수집 및 이용, 프로모션 안내 메일 수신(선택)에 모두 동의하는 버튼 id:all -->
<p align="left"><font size="4"><input type="checkbox" name="all" id="all">이용약관, 개인정보 수집 및 이용,  프로모션 안내 메일 수신(선택)에 모두 동의합니다.</font></p>
<hr>

<!-- 이용약관 동의(필수) id:condition1 -->
<div>
<h3><font size="2"><input type="checkbox" name="condition1" id="condition1"/>이용약관 동의<font color="red">(필수)</font></font></h3>
<!-- 이용약관 내용 : textarea-->
<textarea readonly="readonly" style="width:100%;border:1;overflow:visible;text-overflow:ellipsis;" rows=7>
제 1 조 (목적)
이 약관은 ifari 주식회사 ("회사" 또는 "ifari")가 제공하는 ifari 및 ifari 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (정의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 ifari 및 ifari 관련 제반 서비스를 의미합니다.
②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.
⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.
⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다. 
</textarea>
</div>  
  
<!-- 개인정보 수집 및 이용에 대한 동의 안내(필수) id:condition2-->
<div>
<h3><font size="2"><input type="checkbox" name="condition2" id="condition2"/>개인정보 수집 및 이용에 대한 동의<font color="red">(필수)</font></font></h3>
<!-- 개인정보 수집 및 이용에 대한 내용 : textarea -->     
<textarea readonly="readonly" style="width:100%;border:1;overflow:visible;text-overflow:ellipsis;" rows=7>

정보통신망법 규정에 따라 ifari에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.

1. 수집하는 개인정보
이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 ifari 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, ifari는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
회원가입 시점에 ifari가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
- 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소, 프로필 정보를 수집합니다.
- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.
서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.
구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나,
2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며,
ifari에서 제공하는 위치기반 서비스에 대해서는 'ifari 위치정보 이용약관'에서 자세하게 규정하고 있습니다.
이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.

2. 수집한 개인정보의 이용
ifari 및 ifari 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
- 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
- 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
- 법령 및 ifari 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
- 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
- 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
- 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.

3. 개인정보의 파기
회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.
이용자에게 개인정보 보관기간에 대해 회원가입 시 또는 서비스 가입 시 동의를 얻은 경우는 아래와 같습니다.
부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호(만 14세 미만 회원의 경우 법정대리인 DI)가 있습니다.
부정이용으로 징계를 받기 전에 회원 가입 및 탈퇴를 반복하며 서비스를 부정 이용하는 사례를 막기 위해 탈퇴한 이용자의 휴대전화번호를 복호화가 불가능한 일방향 암호화(해시 처리)하여 6개월간 보관합니다. QR코드 서비스에서 연락처를 등록한 이후 QR코드 삭제 시, 복구 요청 대응을 위해 삭제 시점으로 부터 6개월 보관합니다. 스마트 플레이스 서비스에서 휴대전화번호를 등록한 경우 분쟁 조정 및 고객문의 등을 목적으로 업체 등록/수정 요청시, 또는 등록 이후 업체 삭제 요청 시로부터 최대 1년간 보관 할 수 있습니다.
전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. ifari는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
- 전자상거래 등에서 소비자 보호에 관한 법률
계약 또는 청약철회 등에 관한 기록: 5년 보관
대금결제 및 재화 등의 공급에 관한 기록: 5년 보관
소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
- 전자금융거래법
전자금융에 관한 기록: 5년 보관
- 통신비밀보호법
로그인 기록: 3개월
회원탈퇴, 서비스 종료, 이용자에게 동의받은 개인정보 보유기간의 도래와 같이 개인정보의 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다. 법령에서 보존의무를 부과한 정보에 대해서도 해당 기간 경과 후 지체없이 재생이 불가능한 방법으로 파기합니다.
전자적 파일 형태의 경우 복구 및 재생이 되지 않도록 기술적인 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는 방식 등으로 파기합니다.
참고로 ifari는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다.
 </textarea>
 </div>
 
 <!-- 이벤트 등 프로모션 알람 메일 수신(선택) id:condition3-->
<div>
<h3><font size="2"><input type="checkbox" name="condition3" id="condition3"/>이벤트 등 프로모션 알람 메일 수신<font color="lightgray">(선택)</font></font></h3>
</div>

<!-- 취소버튼 누르면 main.jsp와 연결, 확인버튼 누르면 joinus.jsp 와 연결 -->
<div align="center" style="padding:20px;">
<br>

<div onclick="nochk()" id="btn_cancel" class="btn button_style"><p class="div_in_text">취소</p></div>
<div onclick="chk()" id="btn_agree" class="btn button_style2"><p class="div_in_text">확인</p></div>

</div>

</form>

</div>

<!-- check Box 이벤트처리를 위한 Script -->
<script>


//전체 체크박스 누른경우 3가지 항목 모두 체크
$(document).ready(function(){
	  $("#all").click(function(){
		  if($("#all").prop("checked")){//체크가 된 경우 모든 checkbox의 check를 설정
			  $("input[name=condition1]").prop("checked",true);
			  $("input[name=condition2]").prop("checked",true);
			  $("input[name=condition3]").prop("checked",true);			  
		  }
		  else{//체크가 안된 경우 모든 checkbox의 check를 해제
			  $("input[name=condition1]").prop("checked",false);
			  $("input[name=condition2]").prop("checked",false);
			  $("input[name=condition3]").prop("checked",false);
		  }
	  })
})

var form1=document.getElementById('form1');
var form1_data={
		 "condition1":false,
		 "condition2":false,
		 "condition3":false
};
var condition1=document.getElementById('condition1');
var condition2=document.getElementById('condition2');
var condition3=document.getElementById('condition3');

//
$(document).ready(function(){
	 $(document).click(function(){
		//만약 전체 항목이 선택되었다면 all버튼도 선택
			if($("#condition1").prop("checked")==true&&
					$("#condition2").prop("checked")==true&&
					$("#condition3").prop("checked")==true){
				$("#all").prop("checked",true);
			}
			else{
				$("#all").prop("checked",false);		
			}

	 })
	
})


//chk()함수 : 첫번째 두번째 항목을 동의해야 다음 페이지로 넘어감
//필수항목 두가지를 체크 안하고 확인버튼을 클릭하면 경고창 띄우기
function chk(){
	 if(($(condition1).prop("checked"))&&($(condition2).prop("checked"))){
		 location.href="joinus.jsp"
	 }
	 else{
		if($(condition1).prop("checked")){
			alert('개인정보 수집 및 이용에 대한 동의를 해주세요. ');
		}
		else{
			alert('이용약관에 대한 동의를 해주세요.');
		}
	 }
}

//nochk()함수 : 취소버튼을 클릭하면 main.jsp로 돌아감
function nochk(){
	 location.href="main.jsp";
}
 
</script>

</body>
</html>