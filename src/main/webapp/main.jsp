<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	if(session.getAttribute("ValidMem") == null ) {
		%>
		<jsp:forward page="login.jsp" />
		<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>main.jsp</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("name");
		String id = (String)session.getAttribute("id");	
	%>
	
	<h1><%= name %>�� �α����ϼ̽��ϴ�. <%= id %>ȸ���� �ݰ����ϴ�.</h1>
	<form action="logout.jsp" method="post">
		<input type="submit" value="�α׾ƿ�">
		<input type="button" value="��������" onclick="javascript:window.location='modify.jsp'">
	
	</form>
</body>
</html>