<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.javaex.dao.GuestBookDao2" %>
<%@page import="com.javaex.vo.GuestBookVo2" %>    
<%@page import="java.util.List" %>    

<%	
	//Delete 메소드를 사용해주기 위해서 공간을 마련해준다.
	GuestBookDao2 gBookdao = new GuestBookDao2();

	//딜리트폼에서 넘어온 파라미터들을 담아준다.
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	//딜리트메소드 사용해서 삭제하기
	gBookdao.goodDelete(no, password);
	
	//리다이렉트해서 초기화면으로 돌아가기
	response.sendRedirect("./addList2.jsp");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>