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

	<h2>(valeurA) X2 + (valeurB) X + valeurC = 0</h2>
	<h2>veuillez saisir les valeurs de A, B et C</h2>
	<%

    if (request.getMethod().equals("POST")) {

        double valeurA = Double.parseDouble(request.getParameter("valeurA"));
        double valeurB = Double.parseDouble(request.getParameter("valeurB"));
        double valeurC = Double.parseDouble(request.getParameter("valeurC"));


        if (valeurA == 0) {
            if (valeurB != 0) {
 
                double solutionLineaire = -valeurC / valeurB;
%>
                <h2>Résultats</h2>
                <p>L'équation linéaire <%= valeurB %>x + <%= valeurC %> = 0 a une solution :</p>
                <p>Solution : <%= solutionLineaire %></p>
<%
            } else if (valeurC == 0) {
%>
                <h2>Résultats</h2>
                <p>L'équation indéterminée <%= valeurC %>x = 0 a une solution unique :</p>
                <p>Solution : 0</p>
<%
            } else {
%>
                <h2>Résultats</h2>
                <p>L'équation contradictoire <%= valeurC %>x = <%= valeurC %> (où <%= valeurC %> ≠ 0) n'a pas de solution réelle.</p>
<%
            }
        } else {
            double discriminant = Math.pow(valeurB, 2) - 4 * valeurA * valeurC;

            if (discriminant >= 0) {
                double racineDiscriminant = Math.sqrt(discriminant);
                double solution1 = (-valeurB + racineDiscriminant) / (2 * valeurA);
                double solution2 = (-valeurB - racineDiscriminant) / (2 * valeurA);
%>
                <h2>Résultats</h2>
                <p>Les solutions de l'équation quadratique <%= valeurA %>x^2 + <%= valeurB %>x + <%= valeurC %> = 0 sont :</p>
                <p>Solution 1 : <%= solution1 %></p>
                <p>Solution 2 : <%= solution2 %></p>
<%
            } else {
%>
                <h2>Résultats</h2>
                <p>L'équation quadratique <%= valeurA %>x^2 + <%= valeurB %>x + <%= valeurC %> = 0 n'a pas de solution réelle.</p>
<%
            }
        }
%>
        <form action="<%= request.getRequestURI() %>" method="get">
            <input type="submit" value="Retour">
        </form>
<%
    } else {
%>
        <h2>Formulaire équation quadratique</h2>
        <form action="<%= request.getRequestURI() %>" method="post">
            <label for="valeurA">A :</label>
            <input type="text" name="valeurA" required>
            <br>
            <br>
            <label for="valeurB">B :</label>
            <input type="text" name="valeurB" required>
            <br>
            <br>
            <label for="valeurC">C :</label>
            <input type="text" name="valeurC" required>
            <br>
            <br>
            <input type="submit" value="Résoudre">
        </form>
<%
    }
%>


</body>
</html>