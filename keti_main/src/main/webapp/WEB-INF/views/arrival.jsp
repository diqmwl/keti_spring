<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/common.js"></script>
<style type="text/css">#gitple-launcher {  z-index: 9999989; display: block; position: fixed;  bottom: 20px;} #gitple-launcher-icon {  cursor: pointer;   width: 60px;   height: 60px;   border-radius: 30px;   -moz-box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);   webkit-box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);   box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);   transition: all 0.12s;   padding: 0 !important;   -webkit-animation: gitple-launcher-appear .25s ease !important;   animation: gitple-launcher-appear .25s ease !important; } #gitple-launcher-icon.gitple-open {  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHgAAAB4CAMAAAAOusbgAAAAAXNSR0IArs4c6QAAAexQTFRFAAAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////v7+DcBfDgAAAKN0Uk5TAAECAwQFBgcICwwNDxASExQVFhcZGx4fICEiIyQlJygpKisuLzEzNDU2Nzg7PD0+P0BBQkZHSktMTU5QU1RWWFpbXV5gYmNkZmdpam5vcHFyc3R2d3l6e36AgoOHioyNj5GSlpeZmpucnZ6go6apqqussLGys7a3ubq8vcTFx8jLzc7P0tPY2tvd3t/g4+Tl5ujq6+zt7vDx8/T29/n6+/z9/iFgOSEAAAOiSURBVGje7ZppW1JBFIBHEXPJQClUytQ0NUlcM5dSLJOwzUhNpWw1K5esNJXMyg3ScsOkEBOcP1qJlg+ci8xy+TTvx9neB7hz7sw5ICQQCAQCgUAgCE1CXrXRbLGYjdV5CZFyxpZ02pbwPpZsncWxclvj6kY2MMDGSF2cjNqTPS4siavnpEza3EEfDolvMFcGbUofPpjtvmTO2qjmdRwW681RXD/uGA6bsRR+3tJlTMByKS+vyYuJ8Dbx8bZjYtp5eLsxBd3s3jZMRRurtwlTcoXNa/DSir0GFq96EVOzqGaIV6OYgVH6GGbCTJhovao1NvGailLcixnppfNmbbOKt7OoxP2YmX4ar87LLvbqKMSPMQcekXuVTh5ip5JYXIO5UEMsHuIjHiL1Klx8xC4FobgAXGa6SpNtcQe3uy3ZmqppcEoBobgVWsS286jkeALbPTk7j6MNmtNKKB6GAlGqv88a2GH1t6dCoW6YUGwH1nDs9pUEduydZx3AJDvhLt4C1pjZ7SwM7Cjc7ZgBJm2R7eRMMAAm+TtvBnbc8rcngUE2k0hcBj6hL/z3maCY5vTfWl6Ck8p4xK0BLYqpmA9unz8Xg7QDPGJXg1RAWPXA7Z5VqRkNRGIz5oY5Muf4YBqJxPX8xLVE4mp+YrLbsp6fmCwho+En1pDFTDcv7wrhS2JKMq3zFUQyKTRKKH4icXgzRMPjow0Sh8N7hOJL8DL1xDvwIqE4HV4mQ3pGBjjh12HS094s6c3TxOUnRqgLTp6lSY1Pg5NwV4nFOfB3PSdx51XNwZcnDbEYfYTNk2ApIGGS03n+D5clNqZdD0RYu8RgPU0VYEXq7mkNOL8prVI32g9UF/PrkmFwoUP7f5i2Y4HTK3GPQ99CVAHGW8qPq9UnylvGQ9QLJiiTL6ynAd9p2nzTKzZxD3WCTbXM4nUy5BQrWcTnWbKoz+i9D9mKl1O03s+M5UbVLOWJJ501Ra+Zo/G689mLEse+UGT0KnmUYVIXiCNHI+LCkbdk3i0jtxrfjU0C72Yt4keeI2zvjwquddzEXl94XnsW4kyuLazSS5IMRfPikYOKBd6uaHn+JpDZHbICZtcj2YguezAt9bmfxiN5qYUzu0Uya1EikOjC368p5Pai58A74b5Kdi0yAtpk+bUoPzC1t9gRCS06GrCf3l+IQRFhYr/10500FCF0/6Q/393WocihePP3Pe94ffesEkWYU0Vn4pFAIBAIBAIBC78BgjpwuBN70TcAAAAASUVORK5CYII=");   background-repeat: no-repeat;   background-position: center;   background-size: 60px; } #gitple-launcher-icon.gitple-close {  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHgAAAB4CAMAAAAOusbgAAAAAXNSR0IArs4c6QAAAHhQTFRFAAAA/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////v7+qXaPTAAAACd0Uk5TAAMEBgsQExcaHSYnLT9AQ1Vmbn+LvsPN0NLX2OTl7e/y8/X2+P3+q/gEuAAAASZJREFUaN7t1scSgjAUheGIvSH2ghXLff831AGB5MK4MofN+XdZfZNJNYYxxhhjjDHGGGPsD00PxwjhdFrueHYXuQX+3eXzHGpXEv9w7yWy0a7M/U94/GFi7S4MGsa5Lgx0HRjp2jDUtWCsW8Jgt4DRbg7D3S+MdzO4ATeFrw24KSwNuAWMdnP4sS9bhwi4L9UubYS8rZG7CHi0q7gr0DIPJ24DfrQZ+9FAnZghyF1V7ojdCOF2a27FLQJuX2rkPkIO19ar98jgMXqfLaQZOHfRcOrer3A4c2cxGv66Bg3nLhouXDBculjYcqGw7SJhxwXCrouDlQuDtYuC59o1G5FXz7sbJNo14fm59D/h4KZdY1odxNaKTvGUH23GGGOMMcYYY4z9ozfWuEePIUApsQAAAABJRU5ErkJggg==");   background-repeat: no-repeat;   background-position: center;   background-size: 60px; } #gitple-launcher-icon.gitple-hide {  display: none; } #gitple-launcher-custom-icon {  cursor: pointer;   transition: all 0.12s;   padding: 0 !important; } #gitple-launcher-custom-icon.gitple-open {  display: inline; } #gitple-launcher-custom-icon.gitple-close {  display: none; } #gitple-launcher-unread-message {  position: absolute;   top: 0px;   right: 0px;   cursor: pointer;   width: 18px;  height: 18px;   display: none; } #gitple-container {  z-index: 9999999; display: none; position: fixed !important;  width:400px; height:720px; bottom: 86px;  max-width:100%; max-height:80%;  box-shadow: 0 5px 40px rgba(0,0,0,.16)!important;   border-radius: 4px !important;   overflow: hidden !important; } #gitple-launcher-tooltip {  z-index: 9999999;  bottom: 86px;  position: fixed;  padding: 10px 17px 10px 15px;  color: #fff;  font-size: 13px;  line-height: 1.5em;  -moz-box-shadow: 0 4px 40px rgba(0,0,0,.1);   webkit-box-shadow: 0 4px 40px rgba(0,0,0,.1);   box-shadow: 0 4px 40px rgba(0,0,0,.1);   border-radius: 4px;  text-align: left;  transition: all .12s;  box-sizing: border-box;  -webkit-animation: gitple-launcher-appear .25s ease !important;   animation: gitple-launcher-appear .25s ease !important; } #gitple-frame {  width:100% !important; height:100% !important;  border: none;} .gitple-launcher-tooltip-close {   position: absolute;   right: 20px;   top: 5px;   width: 10px;   height: 10px;   opacity: 0.5;   cursor: pointer;} .gitple-launcher-tooltip-close:hover {   opacity: 1; } .gitple-launcher-tooltip-close:before, .gitple-launcher-tooltip-close:after {   position: absolute;   left: 15px;   content: " ";   height: 10px;   width: 2px;   background-color: #fff; } .gitple-launcher-tooltip-close:before {   transform: rotate(45deg);   -webkit-transform: rotate(45deg); } .gitple-launcher-tooltip-close:after {   transform: rotate(-45deg);   -webkit-transform: rotate(-45deg); } .gitple-container-mobile-open {  overflow: hidden !important;   position: fixed !important;   width: 100%;   height: 100%;   background-color: #fff !important; } .gitple-container-mobile-open  #gitple-launcher { display: block; }.gitple-container-mobile-open  #gitple-container {  left: 0px !important; right: 0px !important; top: 0px; width: 100%; height: 100%; max-height: 100%; border-radius: 0 !important;} .gitple-container-enter {  display: block !important; opacity: 1 !important; } .gitple-container-leave {  display: none !important; opacity: 1 !important; } .gitple-container-will-enter-leave {  display: block !important; opacity: 0 !important; z-index: -1 !important; } @-webkit-keyframes gitple-launcher-appear {   0% {     opacity: 0;     -webkit-transform: scale(.5);     transform: scale(.5)   }   to {     opacity: 1;     -webkit-transform: scale(1);     transform: scale(1)   } } @keyframes gitple-launcher-appear {   0% {     opacity: 0;     -webkit-transform: scale(.5);     transform: scale(.5)   }   to {     opacity: 1;     -webkit-transform: scale(1);     transform: scale(1)   } } </style></head>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/aiaas/kr/js/index.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
<script>
$(document).ready(function() {
    $('.js-example-basic-single').select2();
});
</script>

</head>
<body style="height: 100%; overflow:hidden;">

<div id="wrap" style="height: 100%;"> 
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
								<p class="lang_select">한국어</p>
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
		
		<div class="login_box arrival_container">
			<div class="factory_container">
				<h3 class = "fac_h3">공장 개수</h3>
				<h1 class = "fac_h1">30</h1>
				<h3 class = "select_h3">공장을 선택하세요</h3>

					<select class="js-example-basic-single" name="state"
						style="width: 160px;">
						<option name="map_type" value="1">성수</option>
						<option name="map_type" value="2">풍납</option>
						<option name="map_type" value="3">광주</option>
						<option name="map_type" value="4">동서울</option>
						<option name="map_type" value="5">양주</option>
						<option name="map_type" value="6">연천</option>
						<option name="map_type" value="7">서부</option>
						<option name="map_type" value="8">일산</option>
						<option name="map_type" value="9">김포</option>
						<option name="map_type" value="10">안양</option>
						<option name="map_type" value="11">화성</option>
						<option name="map_type" value="12">인천</option>
						<option name="map_type" value="13">송도</option>
						<option name="map_type" value="14">평택</option>
						<option name="map_type" value="15">오산</option>
						<option name="map_type" value="16">여주</option>
						<option name="map_type" value="17">원주</option>
						<option name="map_type" value="18">충주</option>
						<option name="map_type" value="19">용인</option>
						<option name="map_type" value="20">안성</option>
						<option name="map_type" value="21">아산</option>
						<option name="map_type" value="22">당진</option>
						<option name="map_type" value="23">청원</option>
						<option name="map_type" value="24">대전</option>
						<option name="map_type" value="25">남부</option>
						<option name="map_type" value="26">남광주</option>
						<option name="map_type" value="27">서부산</option>
						<option name="map_type" value="28">포항</option>
						<option name="map_type" value="29">군산</option>
					</select>

				</div>

				<div class="factory_container2">
					<h3 class="select_h3">차량 선택</h3>
					<button id = "down_btn"><img style="width: 15px; height: 15px;" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/down.png"></button>
				</div>
				<div class="factory_container3">
				</div>
				
				<div id="map" style="width:100%;height: 98%;"></div>
			
				<div class="button_container">
				
				<button id="right_btn"><img style="width: 40px; height: 40px; alt="" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/menu.png"></button></div>
				
				<div class="slider_container">
				
				<div style="vertical-align: middle; overflow: auto;">
					
					<div style="text-align: left">
						<p class="fac_h3">외부 차량</p>
					</div>
					
					
					<div class="col">
			          <div class="card shadow">
			            <div class="table-responsive">
			              <table class="table align-items-center table-flush">
			                <thead class="thead-light">
			                  <tr>
			                    <th scope="col">차량번호</th>
			                    <th scope="col">시간</th>
			                    <th scope="col">위도</th>
			                    <th scope="col">경도</th>
			                    <th scope="col">지역</th>
			                  </tr>
			                </thead>
			                <tbody id="out_tbody">
			                  <tr>
			                    <th scope="row">
			                    	<span class="mb-0 text-sm">차량 목록이 없습니다</span>
			                    </th>
			                  </tr>
			                
			                </tbody>
			              </table>
			            </div>
			          </div>
			        </div>

					<div style="text-align: left">
						<p class="fac_h3">내부 차량</p>
					</div>
					
					
					<div class="col">
			          <div class="card shadow">
			            <div class="table-responsive">
			              <table class="table align-items-center table-flush">
			                <thead class="thead-light">
			                  <tr>
			                    <th scope="col">차량번호</th>
			                    <th scope="col">시간</th>
			                    <th scope="col">위도</th>
			                    <th scope="col">경도</th>
			                    <th scope="col">지역</th>
			                  </tr>
			                </thead>
			                <tbody id="in_tbody">
			                  <tr>
			                    <th scope="row">
			                    	<span class="mb-0 text-sm">차량 목록이 없습니다</span>
			                    </th>
			                  </tr>
			                
			                </tbody>
			              </table>
			            </div>
			          </div>
			        </div>

				
				</div>
				</div>
		</div>


</div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b40d0ca1587123c7c621e51a6845c4b"></script>
	<script>
		getCar(1);
        getFactory(1);

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.582421893160976, 127.01039872239114), // 지도의 중심좌표
			level : 12
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		//지도에 컨트롤을 추가해야 지도위에 표시됩니다
		//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	</script>
</body>
</html>