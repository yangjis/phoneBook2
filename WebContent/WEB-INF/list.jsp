<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.vo.PersonVo" %>    


<%
	List<PersonVo> pList = (List<PersonVo>)request.getAttribute("personList"); 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호 리스트</title>
</head>
<body>
	<h1>전화번호 리스트</h1>
	
	입력한 정보 내역입니다.<br><br>
	<%for(PersonVo pL : pList){%> 
	<table border="1">
		<colgroup>
			<col style="width: 120px;">
			<col style="width: 170px;">
		</colgroup>
			<tr>
				<td>이름(name)</td>
				<td><%=pL.getName()%></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=pL.getHp()%></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=pL.getCompany()%></td>
			</tr>
			<tr>
				<td>수정</td>
				<td>삭제</td>
			</tr>
	</table>
	<br>
	<%} %>
	<a href="/phoneBook2/pbc?action=wform">추가번호 등록</a>
</body>
</html>