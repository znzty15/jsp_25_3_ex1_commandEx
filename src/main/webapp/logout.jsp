<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout.jsp</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("name");	
	%>
	<h1><%= name %>�� �α׾ƿ� �Ǽ̽��ϴ�.</h1>
	
	<%
		session.invalidate();//��� ������ ����	
	%>
	<a href ="login.jsp">ȸ�� �α���</a>
</body>
</html>