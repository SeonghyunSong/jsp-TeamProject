
<%@page import="cs.dit.LoginDao3"%>
<%@page import="cs.dit.LoginDao2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>    
    
<%
	 String id = request.getParameter("id");
   new LoginDao3().delete(id);
%>
<script>
	let ans = alert("삭제되었습니다!");
	if (!ans){
		location.href='sushi.jsp'
	}
</script>