package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Search;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	
	public void service (HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Search.date = req.getParameter("date");
        Search.source = req.getParameter("source");
        Search.destination = req.getParameter("destination");
        Search.persons = Integer.parseInt(req.getParameter("persons"));
	
        if(Search.date.equals("")) {
        	PrintWriter out = resp.getWriter();
        	out.println("Please enter a valid date");
        }
        else {
        	resp.sendRedirect("search-results.jsp");
        }
	
	}
	
	public String getDay(String dateInp) {
		LocalDate dt = LocalDate.parse(dateInp);
		return dateInp;
	}
}
