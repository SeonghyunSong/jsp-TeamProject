<%@page import="cs.dit.LoginDto3"%>
<%@page import="cs.dit.LoginDao3"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
LoginDao3 dao = new LoginDao3();
ArrayList<LoginDto3> dtos = dao.list();
%>

<!DOCTYPE html>
<html>
<head>
<style>
   
    nav{
    	font-size: 12pt;
    	font-family: 'PT Sans', Arial, Sans-serif;
    	position: relative;
    }
    nav ul{
    	padding: 0;
    	margin: 0 auto;
    	width: auto;
    } 
    nav li{
    }
    nav a{
    	line-height: 50px;
      height: 50px;
    }
    nav li a{
    	box-sizing: border-box;
    	-moz-box-sizing: border-box;
    	-webkit-box-sizing: border-box;
    }
    nav li:last-child a{
    	border-right: 0;
        }
    nav a:hover, nav a:active{
    }
    nav a#pull{
    	display: none;
    }
      html {
      -webkit-touch-callout:none;
      -webkit-user-select:none;
      -webkit-tap-highlight-color:rgba(0, 0, 0, 0);
      }

      ul{
        /*list-style-type: none;*/
        margin: 0;
        padding: 0;
        background-color: #333;
        text-align: center;
      }
      li{
        /*position: relative;*/
        display: inline-block;
      }
      li a{
        color: #FFFFFF;
        text-align: center;
        padding: 14.5px 16px;
        text-decoration: none;
      }
      li a:hover{
        /*color: #597812;*/
        color: #FFD400;
        font-weight:normal;
      }
      #bg1{
         background-image:url('https://image.shutterstock.com/image-vector/blue-low-poly-world-map-260nw-1280913673.jpg');
         background-repeat:no-repeat;
         background-position:center;
      }
     
    </style> 
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div id = bg1 class="jumbotron text-center" style="margin-bottom:0"> 
	<b>전세계 나라별 맛집과 솔직한 리뷰!</b>
  <h1>FoodWorld</h1>
  <p></p>
</div>
	
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  
	  
	  <div class="collapse navbar-collapse" id="collapsibleNavbar">
	    <ul class="navbar-nav">
	    
	      <li class="nav-item">
	        <button  type="button" class="btn btn-primary" onclick="location.href='list3.jsp'">나라별 맛집 추천</button>
	      </li>  
	      
	      <li class="nav-item">
	        <a class="nav-link" href="#">or</a>
	      </li>
	      
	      <li class="nav-item">
	        <button  type="button" class="btn btn-primary" onclick="location.href='list.jsp'">회원 정보</button>
	      </li>
	           
	       
	      <li class="nav-item">
	        <a class="nav-link" href="#">or</a>
	      </li>
	      
	      <li class="nav-item">
	        <button  type="button" class="btn btn-primary" onclick="location.href='list2.jsp'">자유게시판</button>
	      </li>  
	      
	     	      
	    </ul>
	  </div>  
	</nav>
	<br><br>
	<div class="container"><br>	
	<h2 class="text-center font-weight-bold">오반 스시 본점</h2>
	<br>
	<table class="table table-hover">
		<tr>
			<th><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002065/img/ko/a0002065_parts_5bc69f064382a.jpg?20200227174504&q=80&rw=686&rh=490" style="width:275px; height:250px;">
			<img src="https://savorjapan.com/gg/content_image/t0117_002_20180822085836.jpg" style="width:400px; height:250px;">
			<img src="	https://livejapan.com/public/operation/spot/theme/shinjuku-sushi/img/main1.jpg
                  " style="width:350px; height:250px;">
                </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	
	</tr>
	</table>
	<br><br>
	
	
		<table class="table table-hover">
		<tr>
			<th>맛집 소개</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002065/img/ko/a0002065_parts_5bc69ef9a6711.jpg?20200227174504&q=80" style="width:350px; height:200px;"></td>
	<td>일본 유수의 유흥가로 알려진 [신주쿠.가부키초]의 중심지에 위치한 맛집으로 <br> 저렴한 가격에 다양한 스시를 맛볼수 있는 가성비 갑 맛집입니다. <br> <br> 영업시간 : AM 11:00 ~ AM 06:00</td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th>대표 메뉴</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002065/img/ko/a0002065_parts_5bc69f3bab520.jpg?20200227174504&q=80" style="width:350px; height:200px;"></td>
	<td>800엔으로 니기리스시를 즐길 수 있는 [서비스 런치] <br>왼쪽 위부터 참치, 오징어, 연어, 참치, 넙치, 참치. 왼쪽 아래부터 새우, 달걀, 다랑어 김초밥. <br><br> 가격 : 800엔 (8000원)</td>
	<td></td>
	</tr>
	</table>
	
	
	<table class="table table-hover">
		<tr>
			<th>지도</th>
			<th>상세 주소</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><img src="oban.JPG" style="width:280px; height:240px;"></td>
	<td>도쿄 신주쿠 골든가 G1 세븐일레븐 신주쿠  관청거리점 앞</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	
	<div class="container"><br>	
	<h3 class="text-center font-weight-bold">오반 스시 리뷰</h3>
	<br>
	<table class="table table-hover">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>제목</th>
			<th>내용</th>
			
		</tr>
<% 
	for(LoginDto3 dto : dtos){
%>
<tr>
	<td><a href="updateForm3.jsp?id=<%=dto.getId() %>"><%=dto.getId() %></a></td>
	<td><%=dto.getName() %></td>
	<td><%=dto.getTitle() %></td>
	<td><%=dto.getContent() %></td>
	
	</tr>
	<%} %>
	</table>
	</div>	
	      
	      <div style=" text-align: center;">
	        <button  type="button" class="btn btn-primary" onclick="location.href='insertForm3.jsp'">리뷰 쓰기</button>
        </div>
	<br><br>
</body>
</html>