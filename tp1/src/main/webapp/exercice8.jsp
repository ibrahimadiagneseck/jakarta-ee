<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Résolution d'équation du second degré</title>
</head>
<body>

	<%

	String nom = "";
	String prenom = "";
	String dateNaissance = "";
	String lieuNaissance = "";
	

	if (request.getMethod().equals("POST")) {

	    nom = request.getParameter("nom");
	    prenom = request.getParameter("prenom");
	    dateNaissance = request.getParameter("dateNaissance");
	    lieuNaissance = request.getParameter("lieuNaissance");
	}
	%>
	
	<h2>Formulaire de Présentation</h2>
	
	<%
	if (request.getMethod().equals("POST")) {
	%>
	    <h2>Informations saisies :</h2>
	    <p>Nom : <%= nom %></p>
	    <p>Prénom : <%= prenom %></p>
	    <p>Date de naissance : <%= dateNaissance %></p>
	    <p>Lieu de naissance : <%= lieuNaissance %></p>
	    <form action="<%= request.getRequestURI() %>" method="get">
	        <input type="submit" value="Retour au formulaire">
	    </form>
	<%
	} else {
	%>
	
	<form action="<%= request.getRequestURI() %>" method="post">
	    <label for="nom">Nom :</label>
	    <input type="text" name="nom" value="<%= nom %>" required>
	    <br>
	    <label for="prenom">Prénom :</label>
	    <input type="text" name="prenom" value="<%= prenom %>" required>
	    <br>
	    <label for="dateNaissance">Date de naissance :</label>
	    <input type="date" name="dateNaissance" value="<%= dateNaissance %>" required>
	    <br>
	    <label for="lieuNaissance">Lieu de naissance :</label>
	    <input type="text" name="lieuNaissance" value="<%= lieuNaissance %>" required>
	    <br>
	    <input type="submit" value="Soumettre">
	</form>
	
	<%
	}
	%>


</body>
</html>