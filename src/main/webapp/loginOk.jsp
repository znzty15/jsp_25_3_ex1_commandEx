<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "com.javaGG.ex.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>loginOk.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	
		MemberDAO dao = MemberDAO.getInstance();
		//MemberDAO dao = new MemberDAO();
		int checkNum = dao.userCheck(id, pw);
		
		if (checkNum == -1) { // ���̵� ����
	%>			
		<script language="javascript">
			alert("�Է��Ͻ� ID�� �������� �ʴ� ID�Դϴ�.");
			history.back();
		</script>
	<%	
			
		} else if(checkNum == 0) { // ��� Ʋ��
	%>			
		<script language="javascript">
			alert("��й�ȣ�� Ʋ���ϴ�. �ٽ� Ȯ�� �� �Է����ּ���.");
			history.back();
		</script>
	<%	
		} else if(checkNum == 1 ) { //�α��� ����
			MemberDTO dto = dao.getMember(id);//dto ��ü�� ��� ȸ�������� �����
			String name = dto.getName();
			String uid = dto.getId();
			session.setAttribute("name", name);
			session.setAttribute("id", uid);
			session.setAttribute("ValidMem", "yes");//�α��� ��ȿ�� ȸ�� �Ǻ���
			response.sendRedirect("main.jsp");
		}	
	%>
</body>
</html>