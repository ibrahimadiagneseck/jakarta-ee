<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
    table {
        border-collapse: collapse;
        width: 100%;
    }

    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: center;
    }
</style>
<meta charset="ISO-8859-1">
<title>Résolution d'équation du second degré</title>
</head>
<body>

	<%

	int debut, fin;
	
	debut = (request.getParameter("debut") != null) ? Integer.parseInt(request.getParameter("debut")) : 1;
	fin = (request.getParameter("fin") != null) ? Integer.parseInt(request.getParameter("fin")) : 5;
	
	if(request.getParameter("debut") != null && request.getParameter("fin") == null)
	{
		fin = debut + 4;
	}
	else if((request.getParameter("debut") != null) && (request.getParameter("fin") != null) && (Integer.parseInt(request.getParameter("fin")) <  (Integer.parseInt(request.getParameter("debut")))))
	{
		debut += fin;
		fin = debut - fin;
		debut -= fin; 
	}

	%>
	
	<h2>Tables de multiplication (de <%= debut %> à <%= fin %>)</h2>
	
	<%-- <table>

		<%
		for (int i = 1; i <= 10; i++) {
		    for (int j = 1; j <= 10; j++) {
		    %>
		        |&nbsp;&nbsp;&nbsp;<%= (j < 10) ? j+"&nbsp;&nbsp;" : j %> x <%= (i < 10) ? "&nbsp;&nbsp;"+i+"&nbsp;&nbsp;" : i %> = <%= (i < 10 || j < 10) ? "&nbsp;&nbsp;"+(i*j)+"&nbsp;&nbsp;&nbsp;" : i*j %> 
		    <%
		    }
		    %> 
		    &nbsp;&nbsp;|<br> 
		    <%
		}
		%>

	</table> --%>
	
	<div style="white-space: nowrap; font-family: monospace;">
	    <% for (int i = 1; i <= 10; i++) { %>
	        |&nbsp;&nbsp;
	        <% for (int j = debut; j <= fin; j++) { %>
	            <%= String.format("%3d x %3d = %3d \t|", j, i, i*j) %>&nbsp;&nbsp;
	        <% } %>
	        <br>
	    <% } %>
	</div>


	
	<%-- <div style="font-family: monospace;">
	    <%
	    for (int i = 1; i <= 10; i++) {
	        for (int j = 1; j <= 10; j++) {
	    %>
	    <pre>
	            |&nbsp;&nbsp;<%= String.format("%3d", j) %> x <%= String.format("%3d", i) %> = <%= String.format("%3d", i * j) %>&nbsp;&nbsp;
	    </pre>
	    <%
	        }
	    %>
	    |
	    <br>
	    <%
	    }
	    %>
	</div> --%>
	


	
	


</body>
</html>