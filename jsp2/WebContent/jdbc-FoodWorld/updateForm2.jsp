
<%@page import="cs.dit.LoginDao2"%>
<%@page import="cs.dit.LoginDto2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<% 	String id = request.getParameter("id");


	

	    LoginDto2 dto = new LoginDto2();
	    LoginDao2 dao = new LoginDao2();
	    out.println(id);
	    
	    dto = dao.selectOne(id);
	    
%>	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>멤버 정보 변경</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">사용자 정보 변경</h2>
		<hr/>
		<form action="updatePro2.jsp" method="post">
		  <div class="form-group">
	      <label for="id">번호:</label>
	      <input type="text" class="form-control" id="id" name="id" value="<%=dto.getId() %>" readonly>
	    </div>
	    <div class="form-group">
	      <label for="name">이름:</label>
	      <input type="text" class="form-control" id="name" name="name" value="<%=dto.getName()%>">
	    </div>
	    <div class="form-group">
	      <label for="title">제목:</label>
		    <input type="text" class="form-control" id="title" name="title" value="<%=dto.getTitle()%>">
		  </div>
		  <div class="form-group">
	      <label for="content">내용:</label>
		    <input type="text" style="height:300px;" class="form-control" id="content" name="content" value="<%=dto.getContent()%>">
		  </div>
	    <br>
	    <div class="text-center">
	    		<input type="submit" value="변경" class="btn btn-secondary">  
					<input type="button" value="삭제" class="btn btn-secondary" onclick="location.href='deletePro2.jsp?id=<%=id%>'">
					<input type="button" value="목록" class="btn btn-secondary" onclick="location.href='list2.jsp'">
			</div>
		</form>
	</div>
</body>
</html>