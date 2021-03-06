<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>
        <head>
  <script src = "//code.jquery.com/jquery-1.9.1.js"> </script>
  <script src = "//code.jquery.com/ui/1.10.4/jquery-ui.js"> </script>	

            <style>
                body {
                    margin: 3px;
                    padding: 0px;
                }

                #page {
                    width: 1500px;
                    margin: 0 auto;
                    height: 1500px;
                }

                #header {
                    margin: 0px auto;
                    text-align: center;
                }

                #logout {
                    float: right;
                    display: inline;
                }

                #headerImg {
                    display: inline
                }

                #leftside {
                    width: 400px;
                    height: 100%;
                    border: 1px solid #eee;
                    display: inline;
                    float: left;
                }

                #rightside {
                    width: 1090px;
                    height: 1500px;
                    display: inline;
                    float: right;
                    border-bottom: 1px solid;
                }

                #righttop {
                    /*         	border-bottom:1px solid #eee; */
                    width: 1090px;
                    border-bottom: 1px solid;
                    height: 500px;
                }
                
               #rightbottom {
					width: 1090px;
					height:1000px;
					overflow:hidden;
                }

                #smallLeft {
                    width: 400px;
                    height: 1000px;
                    border-right: 1px solid;
                    float:left;
                    overflow:hidden;
                }

                #smallright {
                    width: 687px;
                    height: 1000px;
                    float:right;
                    
                }
                #container {
                    display: block;
                    width: 400px;
                    height: 150px;
                    margin: 0 auto;
                }
                #searched{
                	height: 150px;
                }
                #smallLeftLeft{
                	width: 50px;
                	height: 1000px;
                	border-right: 1px solid;
                	float:left;
                }
                
                #smallLeftRight{
                	width: 348px;
                	height: 1000px;
                	float:right;
                }
                
                .deliciousList{
                	height:50px;
                	line-height: 50px;
                	text-align: center;
                }
                .delicious{
                	height:50px;
                }

                ul.tabs {
                    margin: 0;
                    padding: 0;
                    float: left;
                    list-style: none;
                    height: 32px;
                    border-bottom: 1px solid #eee;
                    border-left: 1px solid #eee;
                    font-family: "dotum";
                    font-size: 12px;
                    width: 400px;
                    display: block;
                }

                ul.tabs li {
                    float: left;
                    text-align: center;
                    cursor: pointer;
                    width: 82px;
                    height: 31px;
                    line-height: 31px;
                    border: 1px solid #eee;
                    border-left: none;
                    font-weight: bold;
                    background: #fafafa;
                    overflow: hidden;
                    position: relative;
                }

                ul.tabs li.active {
                    background: #FFFFFF;
                    border-bottom: 1px solid #FFFFFF;
                }

                .tab_container {
                    border-bottom: 1px solid;
                    clear: both;
                    float: left;
                    width: 400px;
                    background: #FFFFFF;
                }

                .tab_content {
                    padding: 5px;
                    font-size: 14px;
                    display: none;
                }

                .tab_container .tab_content ul {
                    width: 100%;
                    margin: 0px;
                    padding: 0px;
                }

                .tab_container .tab_content ul li {
                    padding: 5px;
                    list-style: none
                }

                #map {
                    width: 1090px;
                    height: 500px;
                }

                input[type=radio] {
                    margin: 10px;
                }

                input[type=text] {
                    margin: 10px;
                    width: 200px;
                }

            </style>
        </head>

        <body>
            <div id="page">
                <div id="header">
                    <div id="headerImg">
                        <a href=""><img url="">header1</a>
                    </div>
                    <div id="logout">
                        <a href="">로그아웃</a>
                    </div>
                </div>

                <div id="leftside">
                    <div id="container">
                        <ul class="tabs">
                            <li class="active" rel="tab1">원정대 검색</li>
                            <li rel="tab2">원정대 만들기</li>
                        </ul>
                        <div class="tab_container">
                            <div id="tab1" class="tab_content">
                                <div>
                                    <label><input type="date" name="searchDateFrom"></label>~
                                    <label><input type="date"  name="searchDateTo"></label>
                                </div>
                                <div>
                                    <label><input type="text" placeholder="맛집이름,카테고리,상세정보">
								<button onclick="search()">검색</button></label>
                                </div>

                            </div>
                            <!-- #tab1 -->
                            <div id="tab2" class="tab_content">
                                <div>
                                    <label><input type="radio" name="searchPool" id="kakaoDelicious"
								class="searchPool" />맛집 검색하기</label>
                                </div>
                                <div>
                                    <label><input type="radio" name="searchPool" id="myDelicious"
								class="searchPool" />내 맛집 지도로 경로 만들기</label>
                                </div>
                                <div>
                                    <label><input type="text" placeholder="맛집이름,카테고리,상세정보"
								name="search">
								<button onclick="search()">검색</button></label>
                                </div>
                            </div>
                            <!-- #tab2 -->
                        </div>
                        <!-- .tab_container -->

                    </div>
                    <div id="searched" >
                    	
                    
                    
                    </div>

                    <!-- #container -->
                </div>
                <div id="rightside">
                    <div id="righttop">
                        <div id="map"></div>
                    </div>
                    <div id="rightbottom">
                        <div id="smallLeft" >
                        	<div id="smallLeftLeft">
<%--                         	<c:forEach var="i" begin="1" end="20">
                        	<div class='deliciousList ListOrder'>${i}</div>
                        	</c:forEach> --%>
                        	</div>
                        	<div id="smallLeftRight"></div>
                        </div>
                        <div id="smallright">
                            <table>
                                <tr></tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        <c:url var="search1" value="/search"></c:url>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=377fa9901a70a356db9e8b6e1ab1a3a9&libraries=services"></script>
        
        <script>        
        //경로를 만들기 위해서 주소들을 배열에 저장해 놓음
                $(function() {        	
            $('#smallLeftRight').sortable();   
            $(".delicious").draggable();
                })
        
        
        var addresses=new Array();
    	var order=1;   
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                mapOption = {
                    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                    level: 3
                    // 지도의 확대 레벨
                };

            //지도를 생성합니다    
            var map = new daum.maps.Map(mapContainer, mapOption);
		
         // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
            var zoomControl = new daum.maps.ZoomControl();
            map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

         // HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
         if (navigator.geolocation) {
             
             // GeoLocation을 이용해서 접속 위치를 얻어옵니다
             navigator.geolocation.getCurrentPosition(function(position) {
                 
                 var lat = position.coords.latitude, // 위도
                     lon = position.coords.longitude; // 경도
                 
                 var locPosition = new daum.maps.LatLng(lat, lon) // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다	
                 
                 map.setCenter(locPosition); 	                     
               });             
         }               

            function search() {
            	$("#searched").text("");
            	//검색된 맛집 데이터의 이름과 상세정보를 저장할 배열 두개
                var name = new Array();
                var detail = new Array();
                //id를 다르게 하기 위한 변수를 선언
                var i=1;
            	if($("#kakaoDelicious").prop('checked')==true){
            		var places = new daum.maps.services.Places();
					var keyword=$('input[name=search]').val();
            		var callback = function(result, status,pagination) {
            		    if (status === daum.maps.services.Status.OK) {
							$.each(result,function(key,value){
								name=value.place_name;
								detail=value.category_group_name;
	                            $('#searched')
                                .append(
                                    "<div class='delicious' id='"+i+"'><div>"+
                                    name +
                                    "</div>" +
                                    "<div>" +
                                    detail +
                                    "</div></div>" +
                                    "<input name='"+i+"' type='hidden' value='" + value.address_name + "' />");
	                            if(i%15==0 && pagination.hasNextPage==true){
	                            	  $('#searched').append("<button class='nextButton'>다음</button>");
	                            }
	                            $('.nextButton').click(function(){
	                            	// 속성 값으로 다음 페이지가 있는지 확인하고
	                    			if (pagination.hasNextPage) {
	                    				// 있으면 다음 페이지를 검색한다.
	                    				pagination.nextPage();
	                    				$(this).remove();
	                    			}
	                            })
	                            //드래그 가능할수 있도록 
	                             $('.delicious:not(.ui-draggable)').draggable({
	                       	      connectToSortable: "#smallLeftRight",
	                    	      helper: "clone",
	                    	      revert: "invalid",
	                    	      stop: function(event,ui){
	                    	    	  
	                    	    	  var cnt=0;
	                                  //delicious로 저장된 데이터를 가지고옴
									  var data=0;           
                
	                                  
	                                  //중복으로 옮겨지지 않도록 방지
	                  				//이미 옮겨져 있는 맛집과 비교
	                  				//이미 옮겨져 있는 맛집의 경우 순서가 바뀌도록 할것
	                                  if(data.substring(0,13)=='deliciousCopy'){ 
	                                 		for (var k = 0; k < addresses.length; k++) {			
	                      					if(addresses[k]!=$('input[name='+data.chatAt(14)+']').val()){
	                      						cnt++;
	                                  		}
	                                  	}       				
	                         			}else{ //검색되어있는 맛집과 비교
	                                 		for (var k = 0; k < addresses.length; k++) {			
	                      					if(addresses[k]!=$('input[name='+data+']').val()){
	                      						cnt++;
	                                  		}
	                                  	}
	                         			}   

	                                  if(cnt==addresses.length){
	                                  //해당 데이터의 노드를 카피해서 복사되서 움직일 수 있도록 함
	                                  var copy=document.getElementById(data).cloneNode(true);
	                                  //새로 만든 노드의 아이디는 달라야함
	                                  copy.id="deliciousCopy"+data+"";
	                                  //복사해서 지정해놓은 곳으로 저장해놓음
	                                  drop.target.appendChild(copy);
	                                  
	                                  $('#smallLeftLeft').append("<div class='deliciousList listOrder'>"+order+"</div>")

	                                  //data의 값은 1부터 들어가도록 설정해놓았기 때문에 배열안에는 -1을 해서 값을 넣는다.
	                                  addresses[order-1]= $('input[name='+data+']').val();
	                                  //주소-좌표 변환 객체를 생성합니다
	                                  var geocoder = new daum.maps.services.Geocoder();
	                                  //주소를 좌표로 변환합니다
	                                  geocoder.addressSearch(addresses[order-1],function(result, status) {
	                                              // 정상적으로 검색이 완료됐으면 
	                                              if (status === daum.maps.services.Status.OK) {

	                                                  var coords = new daum.maps.LatLng(result[0].y,
	                                                      result[0].x);

	                                                  // 결과값으로 받은 위치를 마커로 표시합니다
	                                                  var marker = new daum.maps.Marker({
	                                                      map: map,
	                                                      position: coords
	                                                  });
	                                                  map.panTo(coords);
	                                                  
	                                              }
	                                              
	                                              console.log(addresses);
	                                              //그 바로 직전의 주소를 변환하기 시작
	                                              if(order-2>=0){                            	
	                                              geocoder.addressSearch(addresses[order-2],function(result2, status2) {
	                                                  // 정상적으로 검색이 완료됐으면 
	                                                  if (status2 === daum.maps.services.Status.OK) {
	                                                      var coords2 = new daum.maps.LatLng(result2[0].y,
	                                                      		result2[0].x);		
	                                                  }
	                                                  
	                                               // 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	                                                  var linePath = [
	                                                  	coords2,
	                                                  	coords	                                        
	                                                  ];

	                                                  // 지도에 표시할 선을 생성합니다
	                                                  var polyline = new daum.maps.Polyline({
	                                                      path: linePath, // 선을 구성하는 좌표배열 입니다
	                                                      strokeWeight: 5, // 선의 두께 입니다
	                                                      strokeColor: '#FFAE00', // 선의 색깔입니다
	                                                      strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
	                                                      strokeStyle: 'solid' // 선의 스타일입니다
	                                                  });
	                                                  // 지도에 선을 표시합니다 
	                                                  polyline.setMap(map);
	                                              });  
	                                          }
	                                              order++;
	                                          }); 
	                              
	                              }
	                    	    	  
	                    	      }
	                        });            
                            i++;                        
							});
            		    }
            		};

            		places.keywordSearch(keyword, callback);
            		
            	}else{
            		//내 맛집지도 불러오기부터 시작해야함

            	//검색을 눌렀을 때 비동기 시작            	
                $.ajax({
                    type: "get",
                    url: "${search1}",
                    dataType: "json", //json형태로 데이터를 받아옴
                    success: function(data) {
                    	//검색된 맛집이 여러개 일 수 있으므로
                        $.each(data, function(key, value) {
							//데이터 가져오기
                            name = value.deliciousPinName;
                            detail = value.deliciousPinDetail;
                            //검색 결과 영역에 각각 div 형태로 붙여넣기
                            $('#searched')
                                .append(
                                    "<div class='delicious' id='"+i+"'><div>"+
                                    name +
                                    "</div>" +
                                    "<div>" +
                                    detail +
                                    "</div></div>" +
                                    "<input name='"+i+"' type='hidden' value='" + value.deliciousPinAddress + "' />");
                            $('.delicious:not(.ui-draggable)').draggable({
                      	      connectToSortable: "#smallLeftRight",
                    	      helper: "clone",
                    	      revert: "invalid"
                        });
                            
                            i++;
                        });
                    }
                });
            }
            }          
            

        </script>
		<script>
        //탭메뉴 만들기
        $(function() {        	
              
            $(".tab_content").hide();
            $(".tab_content:first").show();
            $("ul.tabs li").click(function() {
                $("ul.tabs li").removeClass("active").css("color", "#333");
                //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
                $(this).addClass("active").css("color", "darkred");
                $(".tab_content").hide();
                var activeTab = $(this).attr("rel");
                $("#" + activeTab).fadeIn();
                $("#searched").text("");
            });
            
            $('#smallLeftRight').sortable();   
            $('.delicious:not(.ui-draggable)').draggable();   

            
        });
		</script>
        
        </html>
