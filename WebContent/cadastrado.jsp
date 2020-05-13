<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Questão Cadastrada</title>
</head>
<h1>Questão cadastrada</h1>

<fieldset>
	<%
		String op1 = request.getParameter("op1");
	String op2 = request.getParameter("op2");
	String op3 = request.getParameter("op3");
	String op4 = request.getParameter("op4");
	String gab = request.getParameter("gab");
	String text = request.getParameter("box");
	%>

	<legend>Questão cadastrada com sucesso!</legend>

	<h3>Enunciado:</h3>

	<%=text%>
	<h2>Gabarito:</h2>
	<p>
		<%
			switch (gab) {

		case "A":
			out.println("<html> <font color=RED>"+ "A- " + op1 + "</font></html><br> B- " + op2 + "<br> C- " + op3 + "<br> D- " + op4);
			break;
		case "B":
			out.println("A-" + op1 + "<br> <html> <font color=RED>" +"B- " + op2 + "</font></html><br> C- " + op3 + "<br> D- " + op4);
			break;
		case "C":
		out.println("A-" + op1 + "<br> B- " + op2 + "<br> <html> <font color=RED>" + "C-" + op3 + "</font></html><br> D-" + op4);
			break;
		case "D":
			out.println("A-" + op1 + "<br> B- " + op2 + "<br> C- " + op3 + "<html> <font color=RED> D- " + op4 + "</font></html><br>");
			break;
		default:
			break;
		}
		%>
	</p>
</fieldset>
<body>
</body>
</html>