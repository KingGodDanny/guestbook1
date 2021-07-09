<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.javaex.dao.GuestBookDao" %>
<%@page import="com.javaex.vo.GuestBookVo" %>    
<%@page import="java.util.List" %>

<%
	GuestBookDao guestBookDao = new GuestBookDao();  //얘는 Dao랑 연결해서 굿딜리트를 사용하기위해 쓴것.
	
	
	//받아온 파라미터 꺼내기
	int no = Integer.parseInt(request.getParameter("no"));
	String ps = request.getParameter("password");
	
	
	guestBookDao.goodDelete(no, ps);

	
	
// 	리다이렉트(요청)
 	response.sendRedirect("./addList.jsp");


	//GuestBookVo gVo = new GuestBookVo();  굳이 여기에 쓸필요가 없다.  
	//얘를 쓸거면 Dao에서 goodDelete 메소드를 public int goodDelete(GuestBookVo guestBookVo)로하고
	//꺼내온 파라미터들을 	pstmt.setInt(1, guestBookVo.getNo()) 와 pstmt.setString(2, guestBookVo.getPassword())로 해줘야한다.!!
	
	
	//List<GuestBookVo> guestList = guestBookDao.getGuestList();  <-- 얘는 guestList를 불러와서 일일히 확인을 하고 삭제해야하기때문에 쓴것 (너무너무 비효율적)!
	
// 	for(int i=0; i<guestList.size(); i++){
// 		if(guestList.get(i).getNo() == no &&  guestList.get(i).getPassword().equals(ps)){
// 			System.out.println("삭제진입");
// 			guestBookDao.guestDelete(no);
// 		}
// 	}
	
	
	

	
	//내가 잘못한부분!!!!!!!!!!!!!!!!!!!!!!!!!!!!  구조파악을 잘하고 오류를 하나하나 확인해서 하기!
// 	System.out.println(guestList);
// 	System.out.println(guestList.get(no).getPassword());
// 	System.out.println(ps);
	
// 	//삭제하기 
// 	if(guestList.get(no).getPassword().equals(ps)) { 
// 		guestBookDao.guestDelete(no);
// 	}
	
	
	
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