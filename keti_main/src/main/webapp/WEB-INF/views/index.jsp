<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

<!-- Open Graph Tag -->
<meta property="og:title" content="maum.ai">
<meta property="og:type" content="website"><!-- 웹 페이지 타입 -->
<meta property="og:url" content="https://maum.ai">
<meta property="og:image" content="/aiaas/common/images/maum.ai_web.png">
<meta property="og:description" content="웹인공지능이 필요할땐 마음AI">
<!-- icon_favicon -->
<link rel="apple-touch-icon-precomposed" href="/aiaas/kr/images/ico_maumAI_60x60.png">
<link rel="shortcut icon" type="image/x-icon" href="/aiaas/kr/images/ico_maumAI_60x60.ico">
<title>keti platform</title>
<!-- resources -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/font.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/pop_common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/login_renew.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/academy.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/aiaas/kr/css/voicealbum.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
<!-- //resources -->

<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/jquery-1.11.0.min.js"></script>	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/common.js"></script>
<style type="text/css">#gitple-launcher {  z-index: 9999989; display: block; position: fixed;  bottom: 20px;} #gitple-launcher-icon {  cursor: pointer;   width: 60px;   height: 60px;   border-radius: 30px;   -moz-box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);   webkit-box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);   box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);   transition: all 0.12s;   padding: 0 !important;   -webkit-animation: gitple-launcher-appear .25s ease !important;   animation: gitple-launcher-appear .25s ease !important; } #gitple-launcher-icon.gitple-open {  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHgAAAB4CAMAAAAOusbgAAAAAXNSR0IArs4c6QAAAexQTFRFAAAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////v7+DcBfDgAAAKN0Uk5TAAECAwQFBgcICwwNDxASExQVFhcZGx4fICEiIyQlJygpKisuLzEzNDU2Nzg7PD0+P0BBQkZHSktMTU5QU1RWWFpbXV5gYmNkZmdpam5vcHFyc3R2d3l6e36AgoOHioyNj5GSlpeZmpucnZ6go6apqqussLGys7a3ubq8vcTFx8jLzc7P0tPY2tvd3t/g4+Tl5ujq6+zt7vDx8/T29/n6+/z9/iFgOSEAAAOiSURBVGje7ZppW1JBFIBHEXPJQClUytQ0NUlcM5dSLJOwzUhNpWw1K5esNJXMyg3ScsOkEBOcP1qJlg+ci8xy+TTvx9neB7hz7sw5ICQQCAQCgUAgCE1CXrXRbLGYjdV5CZFyxpZ02pbwPpZsncWxclvj6kY2MMDGSF2cjNqTPS4siavnpEza3EEfDolvMFcGbUofPpjtvmTO2qjmdRwW681RXD/uGA6bsRR+3tJlTMByKS+vyYuJ8Dbx8bZjYtp5eLsxBd3s3jZMRRurtwlTcoXNa/DSir0GFq96EVOzqGaIV6OYgVH6GGbCTJhovao1NvGailLcixnppfNmbbOKt7OoxP2YmX4ar87LLvbqKMSPMQcekXuVTh5ip5JYXIO5UEMsHuIjHiL1Klx8xC4FobgAXGa6SpNtcQe3uy3ZmqppcEoBobgVWsS286jkeALbPTk7j6MNmtNKKB6GAlGqv88a2GH1t6dCoW6YUGwH1nDs9pUEduydZx3AJDvhLt4C1pjZ7SwM7Cjc7ZgBJm2R7eRMMAAm+TtvBnbc8rcngUE2k0hcBj6hL/z3maCY5vTfWl6Ck8p4xK0BLYqpmA9unz8Xg7QDPGJXg1RAWPXA7Z5VqRkNRGIz5oY5Muf4YBqJxPX8xLVE4mp+YrLbsp6fmCwho+En1pDFTDcv7wrhS2JKMq3zFUQyKTRKKH4icXgzRMPjow0Sh8N7hOJL8DL1xDvwIqE4HV4mQ3pGBjjh12HS094s6c3TxOUnRqgLTp6lSY1Pg5NwV4nFOfB3PSdx51XNwZcnDbEYfYTNk2ApIGGS03n+D5clNqZdD0RYu8RgPU0VYEXq7mkNOL8prVI32g9UF/PrkmFwoUP7f5i2Y4HTK3GPQ99CVAHGW8qPq9UnylvGQ9QLJiiTL6ynAd9p2nzTKzZxD3WCTbXM4nUy5BQrWcTnWbKoz+i9D9mKl1O03s+M5UbVLOWJJ501Ra+Zo/G689mLEse+UGT0KnmUYVIXiCNHI+LCkbdk3i0jtxrfjU0C72Yt4keeI2zvjwquddzEXl94XnsW4kyuLazSS5IMRfPikYOKBd6uaHn+JpDZHbICZtcj2YguezAt9bmfxiN5qYUzu0Uya1EikOjC368p5Pai58A74b5Kdi0yAtpk+bUoPzC1t9gRCS06GrCf3l+IQRFhYr/10500FCF0/6Q/393WocihePP3Pe94ffesEkWYU0Vn4pFAIBAIBAIBC78BgjpwuBN70TcAAAAASUVORK5CYII=");   background-repeat: no-repeat;   background-position: center;   background-size: 60px; } #gitple-launcher-icon.gitple-close {  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHgAAAB4CAMAAAAOusbgAAAAAXNSR0IArs4c6QAAAHhQTFRFAAAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////v7+qXaPTAAAACd0Uk5TAAMEBgsQExcaHSYnLT9AQ1Vmbn+LvsPN0NLX2OTl7e/y8/X2+P3+q/gEuAAAASZJREFUaN7t1scSgjAUheGIvSH2ghXLff831AGB5MK4MofN+XdZfZNJNYYxxhhjjDHGGGPsD00PxwjhdFrueHYXuQX+3eXzHGpXEv9w7yWy0a7M/U94/GFi7S4MGsa5Lgx0HRjp2jDUtWCsW8Jgt4DRbg7D3S+MdzO4ATeFrw24KSwNuAWMdnP4sS9bhwi4L9UubYS8rZG7CHi0q7gr0DIPJ24DfrQZ+9FAnZghyF1V7ojdCOF2a27FLQJuX2rkPkIO19ar98jgMXqfLaQZOHfRcOrer3A4c2cxGv66Bg3nLhouXDBculjYcqGw7SJhxwXCrouDlQuDtYuC59o1G5FXz7sbJNo14fm59D/h4KZdY1odxNaKTvGUH23GGGOMMcYYY4z9ozfWuEePIUApsQAAAABJRU5ErkJggg==");   background-repeat: no-repeat;   background-position: center;   background-size: 60px; } #gitple-launcher-icon.gitple-hide {  display: none; } #gitple-launcher-custom-icon {  cursor: pointer;   transition: all 0.12s;   padding: 0 !important; } #gitple-launcher-custom-icon.gitple-open {  display: inline; } #gitple-launcher-custom-icon.gitple-close {  display: none; } #gitple-launcher-unread-message {  position: absolute;   top: 0px;   right: 0px;   cursor: pointer;   width: 18px;  height: 18px;   display: none; } #gitple-container {  z-index: 9999999; display: none; position: fixed !important;  width:400px; height:720px; bottom: 86px;  max-width:100%; max-height:80%;  box-shadow: 0 5px 40px rgba(0,0,0,.16)!important;   border-radius: 4px !important;   overflow: hidden !important; } #gitple-launcher-tooltip {  z-index: 9999999;  bottom: 86px;  position: fixed;  padding: 10px 17px 10px 15px;  color: #fff;  font-size: 13px;  line-height: 1.5em;  -moz-box-shadow: 0 4px 40px rgba(0,0,0,.1);   webkit-box-shadow: 0 4px 40px rgba(0,0,0,.1);   box-shadow: 0 4px 40px rgba(0,0,0,.1);   border-radius: 4px;  text-align: left;  transition: all .12s;  box-sizing: border-box;  -webkit-animation: gitple-launcher-appear .25s ease !important;   animation: gitple-launcher-appear .25s ease !important; } #gitple-frame {  width:100% !important; height:100% !important;  border: none;} .gitple-launcher-tooltip-close {   position: absolute;   right: 20px;   top: 5px;   width: 10px;   height: 10px;   opacity: 0.5;   cursor: pointer;} .gitple-launcher-tooltip-close:hover {   opacity: 1; } .gitple-launcher-tooltip-close:before, .gitple-launcher-tooltip-close:after {   position: absolute;   left: 15px;   content: " ";   height: 10px;   width: 2px;   background-color: #fff; } .gitple-launcher-tooltip-close:before {   transform: rotate(45deg);   -webkit-transform: rotate(45deg); } .gitple-launcher-tooltip-close:after {   transform: rotate(-45deg);   -webkit-transform: rotate(-45deg); } .gitple-container-mobile-open {  overflow: hidden !important;   position: fixed !important;   width: 100%;   height: 100%;   background-color: #fff !important; } .gitple-container-mobile-open  #gitple-launcher { display: block; }.gitple-container-mobile-open  #gitple-container {  left: 0px !important; right: 0px !important; top: 0px; width: 100%; height: 100%; max-height: 100%; border-radius: 0 !important;} .gitple-container-enter {  display: block !important; opacity: 1 !important; } .gitple-container-leave {  display: none !important; opacity: 1 !important; } .gitple-container-will-enter-leave {  display: block !important; opacity: 0 !important; z-index: -1 !important; } @-webkit-keyframes gitple-launcher-appear {   0% {     opacity: 0;     -webkit-transform: scale(.5);     transform: scale(.5)   }   to {     opacity: 1;     -webkit-transform: scale(1);     transform: scale(1)   } } @keyframes gitple-launcher-appear {   0% {     opacity: 0;     -webkit-transform: scale(.5);     transform: scale(.5)   }   to {     opacity: 1;     -webkit-transform: scale(1);     transform: scale(1)   } } </style></head>

<body>
<div id="wrap"> 
	<div class="loginWrap">




		<!--로그아웃 버튼 작동하는것 -->
	<form id="logout"  action="/logout"method="post">
  		<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
	</form>

		<div class="common_header">
			<div class="header_box">
				<h1><a href="/"><img src="${pageContext.request.contextPath}/resources/aiaas/kr/images/keti_logo.jpg" alt="keti.pf logo"></a>
					<span>다양한 빅데이터 분석 플랫폼</span>
				</h1>
				<!--.sta-->
				<div class="sta">
					<a href="/login/pricingPage?lang=ko" class="go_price">가격정책 <span>자세히 보기</span></a>					
					<!--.etcMenu-->

					<a href="javascript:document.getElementById('logout').submit()" class="logout"><span>로그아웃</span></a>
					
					<div class="etcMenu">
						<ul>
							<li class="lang">
								<p class="lang_select">한국어 <em class="fas fa-chevron-down"></em></p>
								<ul class="lst">
									<li><a href="/login/loginForm?lang=en" target="_self"><em>English</em></a></li>
								</ul>
							</li>
						</ul>
					</div>
					
					<!--//.etcMenu-->
				</div>
				<!--//.sta-->
			</div>
		</div>


		<div class="login_box">

			<div class="txt_box">
				<div class="notice_box">
					<div class="boxarea left_box animated fadeInDown ">
						<div class="box_top">
							<button class="box_close close2" type="button">닫기</button>
						</div>
						<div class="box_body">
							<div class="pop_cont">
								<h1><span>Voice</span> 앨범</h1>
								<span class="subtitle">We call it LOVE!</span>
							</div>
							<div class="pop_bottom">
								<p>소중한 사람의 목소리를<br>
									언제 어디서든 들을 수 있는 AI 감성 서비스! </p>
								<a href="/voiceAlbum/krVoiceAlbum" target="_blank">자세히보기</a>
							</div>
						</div>
					</div>








					<div class="boxarea aca_box animated fadeInDown delay-1">
						<div class="box_top">
							<button class="box_close close3" type="button">닫기</button>
						</div>
						<div class="box_body">
							<div class="pop_cont">
								<h5><strong>AI 데이터<br>
									라벨링</strong> 서비스</h5>
							</div>
							<div class="pop_bottom data_bottom">
								<p>고품질 인공지능 데이터 구축 서비스를<br>
									경험하세요 </p>
								<a href="/aiData/krAiDataLabeling">자세히보기</a>
							</div>
						</div>
					</div>

				</div>
				<div class="login_area">
					<p class="animated fadeInUp">
						인공지능이 필요할 땐 마음 AI
					</p>
					<div class="link_box">
						<a class="btn_sign animated fadeInUp delay-1" href="javascript:login()">Sign in with Google</a>
					</div>
					<span class="animated fadeInUp delay-2">월 99,000원 / <strong>가입시 첫 1개월 무료</strong>
	
					</span>
				</div>
				<div class="stn_landing">
					<p class="stn_landing_tit">
						<span>구독 회원이 되면 마음껏 쓸 수 있는 최신 AI 서비스</span>
					</p>
					<div class="stn_landing_cont">
						<div class="item_set">
							<h4 class="bg_purple">카테고리A</h4>
							<ul class="item_lst">
								<li>
									<dl class="ico_tts">
										<dt>
											<span>음성 생성</span>
											<em>Speech Generation, Text-to-Speech</em>
										</dt>
										<dd>실제 그 사람의 목소리 그대로 자연스럽게, 세계 최고 수준의 음질과 실시간 합성 속도를 제공합니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/3c0Lgs-_3Yo" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_vf">
										<dt>
											<span>Voice Filter</span>
											<em>Voice Filter</em>
										</dt>
										<dd>내 목소리와 다른 사람의 목소리가 겹쳐 있는 파일을 입력하면 내 목소리를 분리해냅니다. 마인즈랩이 구글에 이어 세계 최초로 구현에 성공한 엔진입니다. (2019년 6월)</dd>
										<dd class="ytb_link"><a href="https://youtu.be/4xPpFKGu3ZM" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_stt">
										<dt>
											<span>음성 인식</span>
											<em>Speech Recognition, Speech-to-Text</em>
										</dt>
										<dd>음성을 텍스트로 변환하는 엔진으로, 다양한 학습모델을 활용할 수 있고 높은 인식률과 빠른 처리 속도를 제공합니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/HL8qoqOPcFo" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_den">
										<dt>
											<span>음성 정제</span>
											<em>Denoise</em>
										</dt>
										<dd>음성에 섞여있는 배경음과 같이, 음성 내의 다양한 잡음을 제거합니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/siu3mfWznbE" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>

									</dl>
								</li>
								<li>
									<dl class="ico_dia">
										<dt>
											<span>화자 분리</span>
											<em>Diarization</em>
										</dt>
										<dd>회의 음성 등 여러 사람의 음성이 포함된 음성을 입력하면 어떤 시간에 어떤 화자가 말한 음성인지 분리해 냅니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/pj9_kLzUa2k" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>

									</dl>
								</li>
								<li>
									<dl class="ico_vr">
										<dt>
											<span>화자 인증</span>
											<em>Voice Recognition</em>
										</dt>
										<dd>사람의 음성 데이터를 Vector화하고 그 값을 대조하여 목소리를 인식합니다.</dd>
									</dl>
								</li>
							</ul>
						</div>
						<div class="item_set">
							<h4 class="bg_bGreen">카테고리B</h4>
							<ul class="item_lst">
								<li>
									<dl class="ico_mrc">
										<dt>
											<span>AI 독해</span>
											<em>Machine Reading Comprehension</em>
										</dt>
										<dd>주어진 텍스트를 독해하여 문맥을 이해하고, 질문에 맞는 정답의 위치를 찾아내서 정답을 제공합니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/LKWa40r5RcI" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_xdc">
										<dt>
											<span>텍스트 분류</span>
											<em>eXplainable Document Classifier</em>
										</dt>
										<dd>뉴스 기사를 입력하면 기사의 주제를 정확하게 분류해 냅니다. 더불어 분류의 근거를 문장 단위와 단어 단위로 제공하는 '설명 가능한 AI'입니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/dCzKeF79ofU" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_nlu">
										<dt>
											<span>자연어 이해</span>
											<em>Natural Language Understanding</em>
										</dt>
										<dd>문장을 입력하면 형태소 분석과 개체명 인식 결과를 제공해 줍니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/4zgfHlAdNDA" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_hmd">
										<dt>
											<span>패턴 분류</span>
											<em>Hierarchical Multiple Dictionary</em>
										</dt>
										<dd>정규표현식으로 표현된 긍정, 부정 문장 패턴을 통해서 문장의 감정을 파악하고 분류합니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/W5HP0i3ZRgA" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_nlg">
										<dt>
											<span>문장 생성</span>
											<em>NLG(Natural Language Generation)</em>
										</dt>
										<dd>문장을 입력하며, 이를 이어 받아서 새로운 문장을 작문합니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/RfjUCSrnImI" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_itf">
										<dt>
											<span>의도 분류</span>
											<em>ITF(Intent Finder)</em>
										</dt>
										<dd>입력된 질문의 의도를 파악하여 알려줍니다. </dd>
										<dd class="ytb_link"><a href="https://youtu.be/TllWVMmRF58" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
							</ul>
						</div>
						<div class="item_set">
							<h4 class="bg_pink">카테고리C</h4>
							<ul class="item_lst">
								<li>
									<dl class="ico_tti">
										<dt>
											<span>AI 스타일</span>
											<em>Text-to-Image for fashion</em>
										</dt>
										<dd class="txt">패션에 대한 설명 텍스트를 입력하면 이를 이미지로 생성해 냅니다.</dd>
										<dd class="img"><img src="/aiaas/kr/images/img_tti_sample.png" alt="패션에 대한 설명 텍스트를 입력하면 이를 이미지로 생성해 냅니다."></dd>
										<dd class="ytb_link"><a href="https://youtu.be/7Q88bh2Qqro" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_dir">
										<dt>
											<span>문서 이미지 분석</span>
											<em>Document Image Analysis <br>Recognition and Learning</em>
										</dt>
										<dd>각 나라 별 화폐, 고지서 또는 병원 진료비 계산서·영수증의 이미지를 활용하여 정보를 분석해줍니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/42lr3dy36s8" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_tr">
										<dt>
											<span>텍스트 지우기</span>
											<em>Text Removal</em>
										</dt>
										<dd class="txt">이미지에 있는 텍스트를 찾아 내어 제거해줍니다.</dd>
										<dd class="img"><img src="/aiaas/kr/images/img_tr_sample.png" alt="이미지에 있는 텍스트를 찾아 내어 제거해줍니다."></dd>
										<dd class="ytb_link"><a href="https://youtu.be/77rzEwM8cvo" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_avr">
										<dt>
											<span>도로상의 객체 인식</span>
											<em>AI Vehicle Recognition (AVR)</em>
										</dt>
										<dd>도로 상에서 달리는 차량의 이미지를 입력하면 창문의 위치, 차안에 있는 사람의 위치 그리고 번호판의 위치를 표시해줍니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/3LfTbfod-BE" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>
									</dl>
								</li>
								<li>
									<dl class="ico_esr" style="background: url(/aiaas/kr/images/menu/ico_vis_5_fold.svg) 6px 6px no-repeat;background-size: 43px;">
										<dt>
											<span>ESR</span>
											<em>Enhanced Super Resolution</em>
										</dt>
										<dd>작은 크기의 이미지를 손실률을 최소화하여 확대해줍니다.</dd>
									</dl>
								</li>
								<li>
									<dl class="ico_esr" style="background: url(/aiaas/kr/images/menu/ico_vis_6_fold_.svg) 10px 6px no-repeat;background-size: 32px;">
										<dt>
											<span>얼굴 인증</span>
											<em>Face Recognition</em>
										</dt>
										<dd>사람의 얼굴 데이터를 Vector화하고 그 값을 대조하여 얼굴을 인식합니다.</dd>
									</dl>
								</li>
								<li>
									<dl class="ico_esr" style="background: url(/aiaas/kr/images/menu/ico_vis_7_fold_.svg) 9px 5px no-repeat;background-size: 34px;">
										<dt>
											<span>인물 포즈 인식</span>
											<em>Image Pose Recognition</em>
										</dt>
										<dd>이미지 내에 있는 사람의 포즈를 인식하여 추출하고 시각화하는 엔진입니다.</dd>
									</dl>
								</li>
								<li>
									<dl class="ico_esr" style="background: url(/aiaas/kr/images/menu/ico_vis_8_fold.svg) 8px 7px no-repeat;background-size: 37px;">
										<dt>
											<span>얼굴 추적</span>
											<em>Face Tracking</em>
										</dt>
										<dd>동영상 내에 있는 얼굴을 인식하여 추출하는 인공지능 엔진입니다. </dd>
									</dl>
								</li>
								<li>
									<dl class="ico_esr" style="background: url(/aiaas/kr/images/menu/ico_vis_9_fold_.svg) 8px 7px no-repeat;background-size: 29px;">
										<dt>
											<span>이상행동 감지</span>
											<em>Anomaly Reverse Detection</em>
										</dt>
										<dd>영상 내에 있는 이상행동을 감지해주며, 현재 모델은 공항 출국장의 역주행을 감지합니다. </dd>
									</dl>
								</li>
								<li>
									<dl class="ico_subrecog" style="background: url(/aiaas/kr/images/menu/ico_vis_10_fold_.svg) 8px 7px no-repeat;background-size: 37px;">
										<dt>
											<span>이미지 자막 인식</span>
											<em>Subtitle Recognition</em>
										</dt>
										<dd>이미지 내에 있는 자막을 인식하여 추출하는 인공지능 엔진입니다. </dd>
									</dl>
								</li>
							</ul>
						</div>
						<div class="item_set">
							<h4 class="bg_yell">카테고리D</h4>
							<ul class="item_lst">
								<li onclick="window.open('http://125.140.110.217:3002')" title="모니터링 서비스 이동">
									<dl class="ico_mo_svc">
										<dt>										
											<span>차량 모니터링 서비스</span>
											<em>Vehicle Monitoring Service</em>
										</dt>
										<dd>기업 차량의 운행 통계 및 실시간 관리 정보를 제공해줍니다.</dd>
									</dl>
								</li>
								<li onclick="location.href='/index/arrSVC'" title="모니터링 서비스 이동">
									<dl class="ico_arr_svc">
										<dt>
											<span>차량 출 도착 서비스 </span>
											<em>Vehicle Arrival Service</em>
										</dt>
										<dd>기업 차량의 출 도착 정보와 이동경로를 제공해줍니다.</dd>
									</dl>
								</li>
								<li>
									<dl class="ico_phonics">
										<dt>
											<span>파닉스 평가</span>
											<em>Phonics Assessment</em>
										</dt>
										<dd class="txt">영어 단어의 특정 음소를 지정하여 음소단위의 발음평가를 제공합니다.</dd>
										<dd class="ytb_link"><a href="https://youtu.be/Cdza6v-kKkc" target="_blank" title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a></dd>

									</dl>
								</li>

							</ul>
						</div>
					</div>
				</div>
				<div class="add_box">
					<h5 class="">인공지능을 위한 스마트 솔루션 </h5>
					<ul>
						<li>
							<a href="https://data.maum.ai" target="_blank" title="마음 Data: 데이터 편집 툴">
								<dl class="ico_data">
									<dt>
										마음 Data: 데이터 편집 툴
									</dt>
									<dd>TTS/MRC에 필요한 학습 데이터를 편집하는 툴입니다.</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="https://minutes.maum.ai:9090/" target="_blank">
								<dl class="ico_mindsedu">
									<dt>
										마음 Minutes: 회의록 시스템
									</dt>
									<dd>회의 중 녹음 파일만으로 회의록 작성과 관리를 한번에!</dd>
								</dl>
							</a>
						</li>
						<li>
							<a href="https://voice.maum.ai" target="_blank" title="마음 보이스" onclick="alert('시범 서비스 운영중입니다. 서비스 사용을 원하시는 분은 대표메일 (hello@mindslab.ai)로 문의 바랍니다. \n\n정식 서비스 오픈까지 조금만 기다려주세요!');">
								<dl class="ico_maumvoice">
									<dt>
										마음 VoiceBot: 음성봇<span>beta</span>
									</dt>
									<dd>24/7, 상담사의 반복적이고 소모적인 I/O Call을 대신해줍니다.</dd>
								</dl>
							</a>
						</li>










					</ul>
				</div>
				<div class="img_box">
					<img src="/aiaas/kr/images/img-platform-could.png" alt="maum AI img">
				</div>
			</div>
		</div>
		<div class="common_footer">
			<p>
				<a href="https://mindslab.ai/kr" target="_blank" class="footerlogo"><img src="/aiaas/kr/images/img_minslablogo.png" alt="footer logo"></a>
				<a href="https://mindslab.ai/kr" target="_blank"><strong>주식회사 마인즈랩 </strong></a> 경기도 성남시 분당구 대왕판교로644번길 49 다산타워 6층ㅣ
				<span>대표 유태준 ㅣ사업자 등록번호 314-86-55446</span>
			</p>
		</div>

		
	</div>
</div>
<!-- //wrap -->


<!-- 2 .pop_confirm -->
<div class="pop_confirm">
	<div class="pop_bg"></div>
	<!-- .popWrap -->
	<div class="popWrap" style="min-width:460px">
		<button class="pop_close" type="button">닫기</button>
		<!-- .pop_bd -->
		<div class="pop_bd">
			<!--아이콘 부분-->
			<em class="fas fa-exclamation-triangle"></em>
			<!--제목 부분-->
			<p>권장 브라우저 안내</p>
			<!--내용 부분-->
			<span>마음 AI는 <strong>크롬(Chrome) 브라우저</strong>에 최적화 되어있습니다.
				<span style="display:block;margin-top:4px;">크롬 브라우저에서 다양한 마음 AI의 엔진을 만나보세요!</span>
			</span>
		</div>
		<!-- //.pop_bd -->
		<!--창닫기 버튼 -->
		<div class="btn">
			<button class="btn_close btn_blue">창닫기</button>
		</div>
		<!--창닫기 버튼 -->
	</div>
	<!-- //.popWrap -->
</div>
<!-- //.pop_confirm -->

<script type="text/javascript">
	window.onload = function(){
		var browse = navigator.userAgent.toLowerCase();

		if( (navigator.appName == 'Netscape' && browse.indexOf('trident') != -1) || (browse.indexOf("msie") != -1)) {
			$('.pop_confirm').fadeIn();
		}

		// 공통 팝업창 닫기
		$('.pop_close, .pop_bg, .btn a, .btn button').on('click', function () {
			$('.pop_confirm').fadeOut(300);
		});

 		console.log ("로그")

	};
</script>


<script type="text/javascript">   
$(window).load(function() { 
	var errormsg = "";
	if(errormsg != '' && errormsg != null){
		alert(errormsg);
	}		
	
	$('.page_loading').addClass('pageldg_hide').delay(300).queue(function() { 
		$(this).remove(); 
	});


	// product layer popup
	$('.close2').on('click', function () {
		$('.left_box').fadeOut(300);
	});
	$('.close3').on('click', function () {
		$('.aca_box').fadeOut(300);
	});

}); 
</script>
<script type="text/javascript">
	
function login(){
	location.href = "https://accounts.google.com/o/oauth2/auth?client_id=1040624766775-pbsdvt84v9bjm77q739fagme6phqq39o.apps.googleusercontent.com&response_type=code&redirect_uri=https%3A%2F%2Fmaum.ai%2Flogin%2Foauth2callback.do&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email";
}
</script>
	


<!-- floating chat : gitple -->
<script>
    window.GitpleConfig = {appCode: '617StyiVdqik5b3GXRbaRv9tXs16w3'};
    !function () {
        function e() {
            function e() {
                var e = t.contentDocument, a = e.createElement("script");
                a.type = "text/javascript", a.async = !0, a.src = window[n] && window[n].url ? window[n].url + "/inapp-web/gitple-loader.js" : "https://app.gitple.io/inapp-web/gitple-loader.js", a.charset = "UTF-8", e.head && e.head.appendChild(a)
            }
            var t = document.getElementById(a);
            t || ((t = document.createElement("iframe")).id = a, t.style.display = "none", t.style.width = "0", t.style.height = "0", t.addEventListener ? t.addEventListener("load", e, !1) : t.attachEvent ? t.attachEvent("onload", e) : t.onload = e, document.body.appendChild(t))
        }
        var t = window, n = "GitpleConfig", a = "gitple-loader-frame";
        if (!window.Gitple) {
            document;
            var i = function () {
                i.ex && i.ex(arguments)
            };
            i.q = [], i.ex = function (e) {
                i.processApi ? i.processApi.apply(void 0, e) : i.q && i.q.push(e)
            }, window.Gitple = i, t.attachEvent ? t.attachEvent("onload", e) : t.addEventListener("load", e, !1)
        }
    }();
    Gitple('boot');
</script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-122649087-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-122649087-1');
</script>

<div id="uvpn_rate_us">            <div class="uvpn_wrap">                <div class="uvpn_logo-ext">                    <div class="uvpn_logo-wrap">                        <img src="chrome-extension://gpieacagdjdfbifodokiccinpbacemjf/img/128.png">                    </div>                </div>                <div class="uvpn_title">                    Don’t Forget to Rate Us                </div>                <div class="uvpn_desc">                    If you enjoy our product, give us 5 stars. It helps so much!                </div>                <div class="stars">                    <svg xmlns="http://www.w3.org/2000/svg" width="1235" height="1175" viewBox="0 0 1235 1175">                        <path fill="#cf6218" d="M0,449h1235l-999,726 382-1175 382,1175z"></path>                    </svg>                    <svg xmlns="http://www.w3.org/2000/svg" width="1235" height="1175" viewBox="0 0 1235 1175">                        <path fill="#cf6218" d="M0,449h1235l-999,726 382-1175 382,1175z"></path>                    </svg>                    <svg xmlns="http://www.w3.org/2000/svg" width="1235" height="1175" viewBox="0 0 1235 1175">                        <path fill="#cf6218" d="M0,449h1235l-999,726 382-1175 382,1175z"></path>                    </svg>                    <svg xmlns="http://www.w3.org/2000/svg" width="1235" height="1175" viewBox="0 0 1235 1175">                        <path fill="#cf6218" d="M0,449h1235l-999,726 382-1175 382,1175z"></path>                    </svg>                    <svg xmlns="http://www.w3.org/2000/svg" width="1235" height="1175" viewBox="0 0 1235 1175">                        <path fill="#cf6218" d="M0,449h1235l-999,726 382-1175 382,1175z"></path>                    </svg>                </div>                <a target="_blank" href="https://chrome.google.com/webstore/detail/uvpn-free-and-unlimited-v/gpieacagdjdfbifodokiccinpbacemjf/reviews" id="rate_btn_rateus" class="uvpn_rate-btn uvpn_btn">                    Rate Us                </a>                <div id="close_btn_rateus" class="uvpn_later-btn uvpn_btn">                    Not Now                </div>            </div>        </div><iframe id="gitple-loader-frame" style="display: none; width: 0px; height: 0px;"></iframe><div id="gitple-launcher" style="display: block; right: 20px;"><div id="gitple-launcher-icon" class="gitple-hide"></div><img id="gitple-launcher-custom-icon" src="https://s3.ap-northeast-2.amazonaws.com/inapp.gitple.io/app/1061/1544/launcher" class="gitple-open"></div><div id="gitple-container" style="display: none; right: 20px; background-color: white;"><iframe id="gitple-frame" allowfullscreen="" src="https://app.gitple.io/inapp-web/gitple-frame.html"></iframe></div></body></html>