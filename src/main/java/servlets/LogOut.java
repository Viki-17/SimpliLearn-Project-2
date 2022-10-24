package servlets;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogOut extends HttpServlet {
	
	protected void doGet(HttpServletRequest req , HttpServletResponse res) throws IOException {
		HttpSession session = req.getSession();
		
		session.removeAttribute("Email");
		session.invalidate();
		res.sendRedirect("login.jsp");
		
	}

}
