<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List" %>
<%@page import="com.javaex.dao.GuestBookDao" %>
<%@page import="com.javaex.vo.GuestBookVo" %>    

<%

	request.setCharacterEncoding("UTF-8");

	GuestBookDao guestBookDao = new GuestBookDao();

	//파라미터에서 꺼내기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	System.out.println(name + ", " + password + ", " + content);

	
	//파라미터에서 꺼낸거 GuestBookVo로 묶기		
	GuestBookVo guestBookVo = new GuestBookVo(name, password, content);
	
	
	//묶은거 저장하기
	guestBookDao.guestInsert(guestBookVo);
	
	//리다이렉트 - 두번 돌아서 리스트.jsp를 보여주는것
	response.sendRedirect("./addList.jsp");
%>


