<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table页面</title>
</head>
<body>
	计算器：
	<form action="/JavawebTest/TableServlet" method="get">
		<label>
			<input type="text" name="number1"/>
		</label>
		<label>
			<select name="select">
				<option value="+" selected="selected">+</option>
				<option value="-" >-</option>
				<option value="*" >*</option>
				<option value="/" >/</option>
			</select>
		</label>
		<label>
			<input type="text" name="number2"/>
		</label>
		<br>
		<label>
			<input type="submit" name="Submit" value="计算"/>
		</label>
	</form>
</body>
</html>