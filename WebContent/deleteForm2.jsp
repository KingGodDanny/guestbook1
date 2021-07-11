<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.GuestBookDao2" %>
<%@page import="com.javaex.vo.GuestBookVo2" %>    
<%@page import="java.util.List" %>    
    
    <%//addList2에서 삭제클릭시 넘어오는 no파라미터값 받기 %>
    <%int no = Integer.parseInt(request.getParameter("no")); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete2.jsp" method="post">
		비밀번호 <input type="password" name="password" value="">
			 	 <input type="hidden" name="no" value=<%=no %>>
			 	 <button type="submit">확인</button>
	</form>
	
	<a href="./addList2.jsp">메인으로 돌아가기</a>
</body>
</html>