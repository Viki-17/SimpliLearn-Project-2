package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/change-password")
public class ChangePassword extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		PrintWriter out = resp.getWriter();
		String pass = req.getParameter("passwordEntered");
		if(!Login.isLoggedIn) {
			out.println("You must login first");
		}
		else if(pass.equals("")) {
			out.println("Password cant be empty");
			//resp.sendRedirect("change-password.jsp");
		}
		else if(Login.isLoggedIn & !pass.equals("")) {
			Login.password = pass;
			out.println("Password changed. New password is "+ Login.password);
		}
		else {
			out.println("Sorry, Something went wrong");
		}
		out.close();
	}

}
