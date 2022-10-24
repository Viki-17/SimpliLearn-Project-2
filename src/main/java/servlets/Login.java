package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	
	public static boolean isLoggedIn = false;
	public static String email = "vigneshchandar.r@gmail.com";
	public static String password = "vignesh";
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		PrintWriter out = res.getWriter();
	
		String emai = req.getParameter("enteredEmail");
		String pass = req.getParameter("enteredPassword");
		
		if(emai.equals(Login.email)&& pass.equals(Login.password)) {
			isLoggedIn = true;
			
			HttpSession session = req.getSession();
			
			session.setAttribute("Email", emai);
			
			res.sendRedirect("admin-dashboard.jsp");
		}else {
			isLoggedIn = false;
			out.println("Login Failed : Incorrect email or password");
		}
		
		out.close();
		
	}
}
