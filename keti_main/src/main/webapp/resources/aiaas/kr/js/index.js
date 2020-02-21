var markers = [] // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
var polylines = [] // 지도에 표시된 라인 객체를 가지고 있을 배열입니다

function addOption(data){
	$(".factory_container3").empty();
	var option;
	for(var i in data){
		option = "<button id = "+data[i]['CAR_ID']+" class = 'car_btn fac_h3' name = "+i+">"+data[i]['CAR_ID']+"</button>"
		$(".factory_container3").append(option);
	}
}

//하단 버튼 클릭시 아래로 슬라이드 메뉴 내려옴
$(document).ready(function() {
	$('#down_btn').click(function(){
		if($(".factory_container3").css("display") == "none"){
		    $(".factory_container3").slideDown();
		} else {
		    $(".factory_container3").slideUp();
		}
	})
});


//오른쪽 버튼 클릭시 오른쪽으로 슬라이드 메뉴 보여짐
$(document).ready(function() {
	$('#right_btn').click(function(){
		if($(".slider_container").css("display") == "none"){
			$(".button_container").animate({right:'200px'},1000)
		    $(".slider_container").animate({width:'toggle'},1000);
		} else {
			$(".button_container").animate({right:'0px'},1000)
		    $(".slider_container").animate({width:'toggle'},1000);
		}
	})
});

$(document).ready(function() {
    $(".js-example-basic-single").on('change', function() {
        var mapnumber = this.value
        
        $.get("/arrive/get_car", {mapnumber : mapnumber},
		// 서버가 필요한 정보를 같이 보냄. 
		function(data, status) {
        	addOption(data);
		}); 
    });
})

$(document).on('click', '.car_btn', function(){
	var id = $(this).attr('id')
    var name = $(this).attr('name')
    
    $.get("/arrive/get_gps", {id : id, name : name},
		// 서버가 필요한 정보를 같이 보냄. 
		function(data, status) {
    		console.log(data);
    		moveMap(data)
		});
});

//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
    	markers[i].setMap(map);
    }
    for (var i = 0; i < polylines.length; i++) {
    	polylines[i].setMap(map);
    }
    markers = []
    polylines = []
}

function moveMap(data){
	setMarkers(null)
	
	var positions = []
	
	/*
	positions.push({content: "<div class='dotOverlay distanceInfo'><span class='head_span'>"+(i+1)+"번째 경유지</span> <br>위도 : <span class='number'>"+LAT+"</span></br> 경도 : <span class='number'>"
		+LONG+"</span></div>", latlng: new kakao.maps.LatLng(LAT, LONG)}) //마커 배열
	*/
	
	for(var i = 0; i < data.length; i++){
		var LAT = data[i]["GPS_LAT"]
		var LONG = data[i]["GPS_LONG"]	
		positions.push({content: "<div class='marker'><div class='number'>"+(data.length-i)+"</div></div>", latlng: new kakao.maps.LatLng(LAT, LONG)}) //마커가될 커스텀 오버레이 배열
	}
	
	for (var i = 0; i < positions.length; i ++) {
	    // 마커를 생성합니다
	    var marker = new kakao.maps.CustomOverlay({ //커스텀 오버레이로 마커 만든다
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng, // 마커의 위치
	        content: positions[i].content,
	        yAnchor: 1
	    });
	    
	    markers.push(marker)//마커 저장
	}

	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, CustomOverlay) {
	    return function() {
	    	CustomOverlay.setMap(map);
	    };
	}

	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(CustomOverlay) {
	    return function() {
	    	CustomOverlay.setMap(null);
	    };
	}

}

function lineMap(data){
	
	var linePath = []
	
	for(var i = 0; i < data.length; i++){
		var LAT = data[i]["GPS_LAT"]
		var LONG = data[i]["GPS_LONG"]	
		linePath.push(new kakao.maps.LatLng(LAT, LONG))//라인 배열
	}

	var polyline = new kakao.maps.Polyline({
	    path: linePath, // 선을 구성하는 좌표배열 입니다
	    strokeWeight: 5, // 선의 두께 입니다
	    strokeColor: '#FF0000', // 선의 색깔입니다
	    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
	    strokeStyle: 'solid' // 선의 스타일입니다
	});
	polylines.push(polyline)
	
	polyline.setMap(map); //선 그림

}


