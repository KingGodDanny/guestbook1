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
	
	/*
	db  no pw
	
	delect from guestbook
	where no = 3
	and pw = 1234
	
	1 리턴
	0 리턴
	*/
	
	
	//리스트를 다가져온다
	//리스트 번호번째 방명록을 가져온다 --> 오류
	int no = Integer.parseInt(request.getParameter("no"));
	String ps = request.getParameter("password");
	
	
	
	for(int i=0; i<guestList.size(); i++){
		if(guestList.get(i).getNo() == no &&  guestList.get(i).getPassword().equals(ps)){
			System.out.println("삭제진입");
			guestBookDao.guestDelete(no);
		}
	}
	
	
	
	//리스트 no
	
	
	//화면에 받은 번호, 패스워드
	
	
	
	
// 	System.out.println(guestList);
	
// 	System.out.println(guestList.get(no).getPassword());
// 	System.out.println(ps);
	
// 	//삭제하기 
// 	if(guestList.get(no).getPassword().equals(ps)) { 
// 		guestBookDao.guestDelete(no);
// 	}
	
// 	//리다이렉트(요청)
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