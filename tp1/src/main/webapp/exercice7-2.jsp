<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Résultat de la Connexion</title>
</head>
<body>

	<h1>Résultat de la Connexion</h1>

	<%
	    String login = request.getParameter("login");
	    String password = request.getParameter("password");
	    boolean isAuthenticated = "admin".equals(login) && "passer".equals(password);
	
	    if (isAuthenticated) {
	%>
	    <p>Bienvenue, <%= login %> ! Connexion réussie.</p>
	    <!-- <a href="exercice7-1.jsp">Retour</a> -->
	<%
	    } else {
	%>
	    <p>Échec de la connexion. Veuillez vérifier vos informations.</p>
	    <a href="exercice7-1.jsp">Retour</a>
	<%
	
	        session.setAttribute("loginValue", login);
	    }
	%>  
	
</body>
</html>