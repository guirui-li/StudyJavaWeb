<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login页面</title>
	<style type="text/css">
		body{
			margin: 0;
			padding: 0;
			color: blue;
		}
		#form1{
			margin: 200px 560px;
			border: 1px solid black;
		}
		#psw{
			margin-left: 2px;
		}
		#submit{
			margin-left: 100px;
			background-color: red;
		}
	</style>
</head>
<body>
	<%
		String name=request.getParameter("name");
		String psw=request.getParameter("psw");
		if(name==null||psw==null){
			name="";
			psw="";
		}
	%>
	<form action="dologin.jsp" id="form1" name="form1" method="post">
		<label>用户名：
			<input type="text" name="name" value="<%=name %>"/>
			<br><br>
			密&nbsp;&nbsp;&nbsp;码：
			<input type="text" name="psw" value="<%=psw %>" id="psw"/>
			<br><br>
			<input type="submit" name="Submit" value="登录" id="submit"/>
		</label>
	</form>

</body>
</html>