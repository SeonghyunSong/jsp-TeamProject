
<%@page import="cs.dit.LoginDao3"%>
<%@page import="cs.dit.LoginDto3"%>
<%@page import="cs.dit.LoginDao2"%>
<%@page import="cs.dit.LoginDto2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    
<%
	 //한글처리
   request.setCharacterEncoding("UTF-8"); //method=post 가 잘 작동하게함
   //웹 브라우저에서 전달한 정보
   String id = request.getParameter("id"); 
   String name = request.getParameter("name");
   String title = request.getParameter("title");
   String content = request.getParameter("content");
   
   
   LoginDto3 dto = new LoginDto3(id,name,title,content);
   new LoginDao3().update(dto);
  
%>
<script>
	let ans = alert("변경되었습니다!");
	if (!ans){
		location.href = 'sushi.jsp';
	}
</script>


