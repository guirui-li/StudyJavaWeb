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
		}
		label{
			display:inline-block;	
			width: 68px;
			color:blue;
			white-space: pre;
		}
		#form1{
			border: 1px solid black;
			width:250px;
			height:120px;
			background-color: #ffee93;
			position:absolute;
			top:50%;
			left:50%;
			transform:translate(-50%,-50%);
		}
		#submit{
			margin-left: 100px;
			background-color: #4cb4e7;
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
	<form action="dologin.jsp" id="form1" method="post">
		<label for="name">用户名：</label>
			<input type="text" name="name" value="<%=name %>" id="name"/><br><br>
		<label for="psw">密   码：</label>
			<input type="text" name="psw" value="<%=psw %>" id="psw"/><br><br>
		<input type="submit" name="Submit" value="登录" id="submit"/>
	</form>
</body>
</html>