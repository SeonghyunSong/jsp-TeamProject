<%@page import="cs.dit.LoginDto2"%>
<%@page import="cs.dit.LoginDao2"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
LoginDao2 dao = new LoginDao2();
ArrayList<LoginDto2> dtos = dao.list();
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
	<h1 class="text-center font-weight-bold">푸드월드 추천 나라</h1>
	<br>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>1. 일본</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://youimg1.tripcdn.com/target/100110000000qfs9mE3E1_C_640_320_R5_Q70.jpg_.webp?proc=source%2Ftrip" style="width:700px; height:400px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
		<table class="table table-hover">
		<tr>
			<th></th>
			<th>2. 프랑스</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://dimg.donga.com/ugc/CDB/SHINDONGA/Article/5e/12/b6/03/5e12b6031b66d2738de6.jpg" style="width:700px; height:400px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>3. 베트남</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://www.myprt.online/product_img/vietnam70008.jpg" style="width:700px; height:400px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>4. 미국</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://image.kkday.com/v2/image/get/w_960%2Cc_fit%2Cq_55%2Ct_webp/s1.kkday.com/product_36308/20200115025052_2RZeI/jpg" style="width:700px; height:400px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<br><br>
</body>
</html>