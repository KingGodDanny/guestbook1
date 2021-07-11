<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.javaex.dao.GuestBookDao2" %>
<%@page import="com.javaex.vo.GuestBookVo2" %>
<%@page import="java.util.List" %>


<%
	request.setCharacterEncoding("UTF-8");   // 넘어오는 파라미터의 모든 언어(?)가 UTF-8로 설정되기위한 메소드
	
	GuestBookDao2 gBookdao = new GuestBookDao2(); 
	
	
	//addList에서 받은 파라미터들 담아주기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	
	//addList2에서 잘 넘어오는지 확인해야함.
	System.out.println(name + password + content);  
	
	
	//생성자에 받아온 파라미터들 담아주고
	GuestBookVo2 gbList = new GuestBookVo2(name, password, content);
	
	
	//Insert 메소드를 이용하여 리스트 추가
	gBookdao.guestInsert(gbList);

	response.sendRedirect("./addList2.jsp");
%>    
    
