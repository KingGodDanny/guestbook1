<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.javaex.dao.GuestBookDao2" %>
<%@page import="com.javaex.vo.GuestBookVo2" %>    
<%@page import="java.util.List" %>    
    
<%
	
	GuestBookDao2 gBookdao = new GuestBookDao2();

	//이 구조 잘파악하기
	List<GuestBookVo2> gbList = gBookdao.getGuestList(); 

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="./add2.jsp" method="post">
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
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content"></textarea></td>
			</tr>	
			<tr>
				<td colspan="4"><button type="submit">확인</button></td>
			</tr>
		</table>
	</form>
	
	
	<%
	for(int i=0; i<gbList.size(); i++) {
	%>
		<table border="1">
			<colgroup>
					<col style="width: 30px;">
					<col style="width: 90px;">
					<col style="width: 300px;">
					<col style="width: 60px;">
			</colgroup>
			<tr>
				<td><%=gbList.get(i).getNo() %></td>
				<td><%=gbList.get(i).getName() %></td>
				<td><%=gbList.get(i).getRegdate() %></td>
				<td ><a href="./deleteForm2.jsp?no=<%=gbList.get(i).getNo() %>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4"><%=gbList.get(i).getContent() %></td>
			</tr>
		
		
		</table>
		
	<%
		}
	%>
	
	
	
</body>
</html>