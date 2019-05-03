<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String name=request.getParameter("name");
		String psw=request.getParameter("psw");
		if(name==""||psw==""){
	%>
		<jsp:forward page="login.jsp">
			<jsp:param value="<%=name%>" name="name"/>
			<jsp:param value="<%=psw %>" name="psw"/>
		</jsp:forward>
	<%
		}else{
	%>
		<jsp:forward page="success.jsp">
			<jsp:param value="<%=name %>" name="name"/>
		</jsp:forward>
	<%
		}
	%>