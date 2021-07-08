<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.javaex.dao.GuestBookDao" %>
<%@page import="com.javaex.vo.GuestBookVo" %>    
<%@page import="java.util.List" %>

<%
	GuestBookDao guestBookDao = new GuestBookDao();
	List<GuestBookVo> guestList = guestBookDao.getGuestList();
	
	//받아온 파라미터 꺼내기
	//int no = Integer.parseInt(request.getParameter("no"));
	
	int no = Integer.parseInt(request.getParameter("no"));
	
	GuestBookVo guestBookVo = new GuestBookVo(no);
	guestList.add(guestBookVo);
	
	String ps = request.getParameter("password");
	int intPs = Integer.parseInt(request.getParameter("password"));
	
	
	//삭제하기 
	if(guestList.get(no).getPassword().equals(ps)) { 
		guestBookDao.guestDelete(no);
	}
	
	//리다이렉트(요청)
	response.sendRedirect("./list.jsp");
	
	//리스트에서 no값이 딜릿폼거쳐서 딜릿까지 잘와서 여기서 비교하는데 왜안될꼬...
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	
	%>
</body>
</html>