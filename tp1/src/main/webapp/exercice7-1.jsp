<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page de Connexion</title>
</head>
<body>

	<h1>Page de Connexion</h1>

    <form action="exercice7-2.jsp" method="post">
    	<fieldset>
	        <legend>Connexion</legend>
	        <label for="login">Login:</label>
	        <input type="text" id="login" name="login" value="<%= (session.getAttribute("loginValue") != null) ? session.getAttribute("loginValue") : "" %>" required>
	
	        <label for="password">Mot de passe:</label>
	        <input type="password" id="password" name="password" required>
	
	        <button type="submit" name="submit">Connexion</button>
        </fieldset>
    </form>

	
</body>
</html>