<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		double sum=0.0;
		String number1str=request.getParameter("number1");
		String number2str=request.getParameter("number2");
		String optionstr=request.getParameter("select");
		if(number1str!=""&&number2str!=""&&optionstr!=""){
			double number1=Double.parseDouble(number1str);
			double number2=Double.parseDouble(number2str);
			if("+".equals(optionstr)){
				sum=number1+number2;
				out.print(sum);
			}else if("-".equals(optionstr)){
				sum=number1-number2;
				out.print(sum);
			}else if("*".equals(optionstr)){
				sum=number1*number2;
				out.print(sum);
			}else if("/".equals(optionstr)){
				sum=number1/number2;
				out.print(sum);
			}
		}
	%>
	<jsp:forward page="jisuan.jsp">
		<jsp:param value="<%=number1str%>" name="number1"/>
		<jsp:param value="<%=number2str%>" name="number2"/>
		<jsp:param value="<%=optionstr %>" name="select"/>
		<jsp:param value="<%=sum%>" name="sum"/>
	</jsp:forward>