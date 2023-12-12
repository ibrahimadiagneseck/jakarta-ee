package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/multiplication")
public class Multiplication extends HttpServlet{
	
	@Override
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
        
//        out.println("<!DOCTYPE html>");
//        out.println("<html lang=\"en\">");
//        out.println("<head>");
//        out.println("<meta charset=\"UTF-8\">");
//        out.println("<title>Multiplication Table</title>");
//        out.println("</head>");
//        out.println("<body>");
//        out.println("<h1>Multiplication Table of 2</h1>");
//        out.println("<table border=\"1\">");
//        
//        int table = Integer.parseInt(request.getParameter("table"));
//        for (int i = 1; i <= 10; i++) {
//            out.println("<tr>");
//            out.println("<td>" + table + "</td>");
//            out.println("<td>*</td>");
//            out.println("<td>" + i + "</td>");
//            out.println("<td>=</td>");
//            out.println("<td>" + (table * i) + "</td>");
//            out.println("</tr>");
//        }
//        
//        out.println("</table>");
//        out.println("</body>");
//        out.println("</html>");
        
		
		String sentTable = request.getParameter("table");
        PrintWriter out = response.getWriter();
        
        if(sentTable != null) {
        	int table = Integer.parseInt(sentTable);
        	out.printf("<h1>Table de %d</h1>", table);
        	
        	for(int i = 1; i <= 10; i++) {
        		out.printf("%d x %d = %d <br>", table, i, table * i);
        	}
        	
        } else {
        	out.print("Erreur : vous devez spécifier le nombre en paramètre !");
        }
        
        
    }
	

}
