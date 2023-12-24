<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String nombre = request.getParameter("nombre");
	
		if(nombre != null) 
		{
			int table = Integer.parseInt(nombre);
	
			for(int i = 1; i <= 10; i++)
			{
				%>
					<%= table %> x <%= i %> = <%= table * i %> 
					<br>
				<%
			}
		}
		else 
		{
			out.print("Vous devez spécifier la table paramètre !");
		}
	%>

</body>
</html>