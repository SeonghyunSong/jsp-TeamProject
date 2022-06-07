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
	<h2 class="text-center font-weight-bold">스시 맛집 추천 베스트</h2>
	<br>
	
	<br><br>
	
	
		<table class="table table-hover">
		<tr>
			<th>1. 오반스시</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><button type="button" onclick="location.href='sushi.jsp'" class="btm_image" id="img_btn"><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002065/img/ko/a0002065_parts_5bc69f064382a.jpg?20200227174504&q=80&rw=686&rh=490" style="width:350px; height:200px;"></td>
	<td>일본 유수의 유흥가로 알려진 [신주쿠.가부키초]의 중심지에 위치한 맛집으로 <br> 저렴한 가격에 다양한 스시를 맛볼수 있는 가성비 갑 맛집입니다. <br> <br> 위치 : 도쿄 신주쿠 <br> <br> 별점 ★4.6 </td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th>2. 니지</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><button type="button" onclick="location.href='sushi.jsp'" class="btm_image" id="img_btn"><img src="https://res.cloudinary.com/twenty20/private_images/t_watermark-criss-cross-10/v1525248310000/photosp/d3f279e5-1b45-4c6f-a0e1-1374e85c7eb0/stock-photo-sun-city-food-wood-shopping-sushi-asia-japan-shop-d3f279e5-1b45-4c6f-a0e1-1374e85c7eb0.jpg" style="width:350px; height:200px;"></td>
	<td>일본 오사카의 중심지인 도톤보리 번화가에 고급 스시집으로 50년째 운영중입니다. <br> 고급스시의 정석이라 볼 수 있는 맛집입니다. <br> <br> 위치 : 오사카 도톤보리 <br> <br> 별점 ★4.5 </td>
	<td></td>
	</tr>
	</table>
	
	
	<table class="table table-hover">
		<tr>
			<th>3. 이와모토 고간</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><button type="button" onclick="location.href='sushi.jsp'" class="btm_image" id="img_btn"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpt9DC-Cvdsj44vdv1Oc_K2zZebY6Xny6xEg&usqp=CAU" style="width:350px; height:200px;"></td>
	<td>교토시에 위치한 맛집으로 제철에 알맞는 재료로 오마카세를 맛볼 수 있습니다 <br> 다양한 제철스시를 맛보기에 좋은곳입니다. <br> <br> 위치 : 교토 마호군 <br> <br> 별점 ★4.4 </td>
	<td></td>
	</tr>
	</table>
	
	
	
	<br><br>
</body>
</html>