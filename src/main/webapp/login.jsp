<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login.jsp</title>
</head>
<body>
	<form action="loginOk.jsp" method="post">
		���̵�:<input type="text" name="id" value="<% if(session.getAttribute("id") != null) out.println(session.getAttribute("id"));%>"><br/>
		��й�ȣ : <input type="password" name="pw"><br/>
		<input type="submit" value="�α���"><br/>
		���� �������� ������ ���� �Ʒ� ȸ������ ��ư�� ���� ȸ�������� ���ּ���.<br/>
		<input type="button" value="ȸ������" onclick="javascript:window.location='join.jsp'">	
	</form>
</body>
</html>