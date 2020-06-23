<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호 등록</title>
</head>
<body>
	<h1>전화번호 등록</h1>
	전화번호를 등록하려면<br>
	아래 항목을 기입하고 "등록"버튼을 클릭하세요.<br><br>
	
<form action = "/phoneBook2/pbc" accept-charset="utf-8" name = "phoneBookInsert" method = "get">
	<input type="hidden" name = "action" value="insert"/>
	<label for="name">이름(name)</label>
	<input id = name type = "text" name = "name"/><br>
	
	<label for="hp">핸드폰(hp)</label>
	<input id = "hp" type="text" name = "hp"/><br>
	
	<label for="company">회사(company)</label>
	<input id = "company" type="text" name = "company"/>
	<br>
	<button type="submit">등록</button><br><br>
</form>
<a href="./list.jsp">리스트 바로가기</a>
</body>
</html>