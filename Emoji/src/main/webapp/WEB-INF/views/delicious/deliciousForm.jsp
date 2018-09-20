<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=377fa9901a70a356db9e8b6e1ab1a3a9&libraries=services"></script>
<style>
	ul.tab {
		margin: 0;
		padding: 0;
		float: left;
		list-style: none;
		height: 32px;
		border-bottom: 1px solid #999;
		border-left: 1px solid #999;
		width: 100%;
	}
	
	ul.tab li {
		float: left;
		margin: 0;
		padding: 0;
		height: 31px;
		line-height: 31px;
		border: 1px solid #999;
		border-left: none;
		margin-bottom: -1px;
		overflow: hidden;
		position: relative;
		background: #e0e0e0;
	}
	
	ul.tab li a {
		text-decoration: none;
		color: #000;
		display: block;
		padding: 0 20px;
		border: 1px solid #fff;
		outline: none;
	}
	
	ul.tab li a:hover {
		background: #ccc;
	}
	
	html ul.tab li.active, html ul.tab li.active a:hover {
		backgroud: #fff;
		border-bottom: 1px solid #fff;
	}
	
	#container {
		border: 1px solid #999;
		border-top: none;
		overflow: hidden;
		clear: both;
		float: left;
		width: 100%;
		background: #fff;
	}
	
	.tab_content {
		padding: 20px;
	}
	
 	#left {
 	 	padding-left: 2%;
 		width:30%;
 	}
 	
 	 #right {
 	 	padding-left: 2%;
 	 	width:63%;
 	 	float: left;
 	}
 	
 	#map {
 		width: 100%;
 		height: 500px;
 	}
</style>
</head>
<body>
<div id="left">
	<div id="container">
		<ul class="tab">
			<li class="active"><a href="#makeMap">맛집지도 만들기</a></li>
			<li><a href="#searchMap">맛집지도 검색</a></li>
		</ul>
		
		<div class="tab_container">
			<div id="makeMap" class="tab_content" style="display: block;">
				<form action="<c:url value='/deliciousMapInsert' />" method="post">
					<table>
						<tr>
							<td>지도이름</td>
							<td><input type="text" id="deliciousMapName" name="deliciousMapName"></td>
						</tr>
						<tr>
							<td>해시태그</td>
							<td><input type="text" id="deliciousMapTag" name="deliciousMapTag" placeholder="5개까지 입력 가능합니다."></td>
						</tr>
						<tr>
							<td>상세설명</td>
							<td>
								<textarea rows="5" id="deliciousMapDetail" name="deliciousMapDetail"></textarea>
								<span id="textCnt">0</span>/20
							</td>
						</tr>
					</table>
					
					<input type="hidden" name="deliciousMapOpen" value="open">
					
					<jsp:useBean id="now" class="java.util.Date" />
					<input type="hidden" name="deliciousMapCreateDate" value="<fmt:formatDate value='${now}' pattern='yyyy-MM-dd' />">
					
					<input type="hidden" name="memberNum" value="2">
					
					<input type="image" src="resources/img/saveBtn.png" style="float:right;">
				</form>
			</div>
			
			<div id="searchMap" class="tab_content" style="display: none;">
				<input type="text" id="search" placeholder="맛집이름, 맛집지도이름, 해시태그"><br>
			</div>
		</div>
	</div>
</div>

<div id="right">
	<div id="map"></div>
	<div id="clickLatlng"></div>
</div>

<script>
	$(document).ready(function(){
		$('textarea').keyup(function() {
			var text = $(this).val();
			var textlength = text.length;

			var remain = 20 - textlength;
		
			if(remain < 0) {
				var newText = text.substr(0,20);
				$(this).val(newText);
			}

			else
				$('#textCnt').text(remain);
		});
	
		$('.tab_content').hide();
		$('ul.tab li:first').addClass('active').show();
		$('.tab_content:first').show();
	
		$('ul.tab li').click(function(){
			$('ul.tab li').removeClass('active');
			$(this).addClass('active');
			$('.tab_content').hide();
			
			var activeTab = $(this).find('a').attr('href');
			$(activeTab).fadeIn();
		});
	});

	var mapContainer = document.getElementById('map'),   //지도 담을 영역
		//지도 생성 시, 필요한 기본 옵션
		mapOptions = { 
			center: new daum.maps.LatLng(37.5706073, 126.9853092), //지도 중심좌표
			level: 3   //지도 레벨(확대, 축소)
		};

	var map = new daum.maps.Map(mapContainer, mapOptions);   //지도 생성, 객체 리턴
</script>
</body>

</html>