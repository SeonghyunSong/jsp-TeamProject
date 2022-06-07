<%@page import="cs.dit.LoginDao"%>
<%@page import="cs.dit.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");
String gender = request.getParameter("gender");

LoginDto dto = new LoginDto(id , name, pwd, email, gender);
LoginDao dao = new LoginDao();

dao.insert(dto);

response.sendRedirect("list.jsp");
%>
