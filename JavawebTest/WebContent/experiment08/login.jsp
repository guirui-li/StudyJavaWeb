<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
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
		#div1{
			color:red;
			
		}
	</style>
</head>
<body>
	<form action="/JavawebTest/FenyeServlet" id="form1" name="form1" method="post">
		<label>用户名：
			<input type="text" name="name" value="${requestScope.name }"/>
			<br>
		</label>
			<div id="div1">
				${requestScope.page1 }
			</div>
		<label>
			密&nbsp;&nbsp;&nbsp;码：
			<input type="text" name="psw" value="${requestScope.psw }" id="psw"/>
			<br>
		</label>
			<div id="div1">
				${requestScope.page2 }
			</div>
			<input type="submit" name="Submit" value="登录" id="submit"/>
	</form>
</body>
</html>