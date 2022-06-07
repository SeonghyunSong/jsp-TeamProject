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
	<h1 class="text-center font-weight-bold">일본 추천 음식 베스트</h1>
	<br>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>1. 스시</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='sushiStore.jsp'" class="btm_image" id="img_btn"><img src="https://post-phinf.pstatic.net/MjAxNzEyMDVfNTQg/MDAxNTEyNDM5NjM5OTQ4.pr5XtzsZ6wklgkx66eZckzU2Vv1p_5Fi3F28gkyR-_Mg.6UXV7szJgfejZiN2KQpD4AWSVoXEODx8JvUNZqUw5Ucg.PNG/image001.png?type=w1200" style="width:500px; height:300px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
		<table class="table table-hover">
		<tr>
			<th></th>
			<th>2. 라멘</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://i.ytimg.com/vi/Hf0b_-hVBS4/maxresdefault.jpg" style="width:500px; height:300px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>3. 돈까스 </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://mblogthumb-phinf.pstatic.net/20151011_143/gone2071_14445502579068pl4q_JPEG/%B5%B7%B1%EE%BD%BA4.jpg?type=w2" style="width:500px; height:300px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>4. 타코야끼</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://image-se.ycrowdy.com/20210930/CROWDY_0_202109301326420203_RGrD8eEb7X.png" style="width:500px; height:300px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	
</body>
</html>