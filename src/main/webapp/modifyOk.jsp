<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.javaGG.ex.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="dto" class="com.javaGG.ex.MemberDTO" scope="page"/>
<jsp:setProperty name="dto" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>modifyOk.jsp</title>
</head>
<body>
	<%
		String id = (String)session.getAttribute("id");
		dto.setId(id);
	
		MemberDAO dao = MemberDAO.getInstance();
		// MemberDAO dao = new MemberDAO();
		int ri = dao.updateMember(dto);
		
		if(ri==1){
	%>
			<script language="javascript">
				alert("ȸ������������ �Ϸ�Ǿ����ϴ�.");
				document.location.href="main.jsp"
			</script>
	<%	
		} else {
	%>
			<script language="javascript">
				alert("ȸ������������ �����Ͽ����ϴ�.");
				history.go(-1);
			</script>
	<%	
		}
	%>
	
</body>
</html>