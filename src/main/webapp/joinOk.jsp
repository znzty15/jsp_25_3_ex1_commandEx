<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "com.javaGG.ex.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="dto" class="com.javaGG.ex.MemberDTO"/>
<jsp:setProperty name="dto" property="*" />


    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>joinOk.jsp</title>
</head>
<body>
	<%
	//String id = dto.getId();
	//out.println(idr);	
	dto.setRdate(new Timestamp(System.currentTimeMillis())) ;//������ ����ð��� ����
	
	MemberDAO dao = MemberDAO.getInstance();
	//MemberDAO dao = new MemberDAO();
	//int ri = dao.insertMember(dto);//ri���� ��ȯ�� ����1 ���� 0
	
	if(dao.confirmId(dto.getId()) == MemberDAO.MEMBER_EXISTENT) {
	%>	
		<script language="javascript">
			alert("�Է��Ͻ� ���̵� �̹� �����մϴ�.");
			history.back();
		</script>
	<%	
	} else {
		int ri = dao.insertMember(dto);//ri���� ��ȯ�� ����1 ���� 0
		if(ri == MemberDAO.MEMBER_JOIN_SUCCESS) {
			session.setAttribute("id", dto.getId());
	%>			
			<script language="javascript">
				alert("ȸ�������� �����մϴ�! �α��� ���ּ���.");
				document.location.href="login.jsp";
			</script>
	<%	
		} else {
			
	%>			
			<script language="javascript">
				alert("ȸ�����Կ� �����߽��ϴ�. �簡�����ּ���.");
				document.location.href="login.jsp";
			</script>
	<%			
		}
	}
	
	%>
</body>
</html>