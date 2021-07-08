<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.javaex.dao.GuestBookDao" %>
    <%@page import="com.javaex.vo.GuestBookVo" %>
    <%@page import="java.util.List" %>
    
    <%
    	GuestBookDao guestBookDao = new GuestBookDao();
    	List<GuestBookVo> guestList = guestBookDao.getGuestList();
    	
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트</h1>
	<p>입력한 정보 내역입니다.</p>
	
	<form action="./insert.jsp" method="get">
	<table border="1">
		<colgroup>
			<col style="width: 40px;">
			<col style="width: 120px;">
			<col style="width: 80px;">
			<col style="width: 120px;">
		</colgroup>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value=""></td>
			<td>비밀번호</td>
			<td><input type="text" name="password" value=""></td>
		</tr>
		
		<tr>
			<td colspan="4" height="150" ><textarea name ="content"></textarea></td>
		</tr>
		<tr>
			<td colspan = "4"><button type = "submit">확인</button></td>
		</tr>
		
	</table>
	</form>
	
	<%
		for(int i=0; i<guestList.size(); i++) {
	%>
		<br>
		<table border="1">
			<colgroup>
				<col style="width: 30px;">
				<col style="width: 90px;">
				<col style="width: 300px;">
				<col style="width: 60px;">
			</colgroup>
			<tr>
				<td><%=guestList.get(i).getNo() %></td>
				<td><%=guestList.get(i).getName() %></td>
				<td><%=guestList.get(i).getRegdate() %></td>
				<td><a href="./deleteForm.jsp?no=<%=guestList.get(i).getNo() %>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4" height="60">첫번째 방명록내용<br><%=guestList.get(i).getContent() %></td>
			</tr>
		</table>
	
	<%
		}
	%>

</body>
</html>