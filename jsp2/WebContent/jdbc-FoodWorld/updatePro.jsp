<%@page import="cs.dit.LoginDao"%>
<%@page import="cs.dit.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    
<%
	 //한글처리
   request.setCharacterEncoding("UTF-8"); //method=post 가 잘 작동하게함
   //웹 브라우저에서 전달한 정보
   String id = request.getParameter("id"); 
   String name = request.getParameter("name");
   String pwd = request.getParameter("pwd");
   String email = request.getParameter("email");
   String gender = request.getParameter("gender");
   
   LoginDto dto = new LoginDto(id,name,pwd,email,gender);
   new LoginDao().update(dto);
   
%>
<script>
	let ans = alert("변경되었습니다!");
	if (!ans){
		location.href = 'list.jsp';
	}
</script>
