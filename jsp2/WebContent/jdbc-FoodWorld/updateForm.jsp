<%@page import="cs.dit.LoginDao"%>
<%@page import="cs.dit.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<% 	String id = request.getParameter("id");


	

	    LoginDto dto = new LoginDto();
	    LoginDao dao = new LoginDao();
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
		<form action="updatePro.jsp" method="post">
		  <div class="form-group">
	      <label for="id">아이디:</label>
	      <input type="text" class="form-control" id="id" name="id" value="<%=dto.getId() %>" readonly>
	    </div>
	    <div class="form-group">
	      <label for="name">이름:</label>
	      <input type="text" class="form-control" id="name" name="name" value="<%=dto.getName()%>">
	    </div>
	    <div class="form-group">
	      <label for="pwd">비밀번호:</label>
		    <input type="password" class="form-control" id="pwd" name="pwd" value="<%=dto.getPwd()%>">
		  </div>
		  <div class="form-group">
	      <label for="pwd">이메일:</label>
		    <input type="text" class="form-control" id="email" name="email" value="<%=dto.getEmail()%>">
		  </div>
	    <br>
	    <div class="text-center">
	    		<input type="submit" value="변경" class="btn btn-secondary">  
					<input type="button" value="삭제" class="btn btn-secondary" onclick="location.href='deletePro.jsp?id=<%=id%>'">
					<input type="button" value="목록" class="btn btn-secondary" onclick="location.href='list.jsp'">
			</div>
		</form>
	</div>
</body>
</html>