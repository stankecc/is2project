package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import managers.UserManager;
import model.User;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String pw = request.getParameter("password");
		String confpw = request.getParameter("confirmpw");
		
		User li = new UserManager().getUserForEmailAndPw(email, pw);
		RequestDispatcher rd;
		if(li != null || !pw.equals(confpw)) {
			rd = request.getServletContext().getRequestDispatcher("/loginform/login.jsp");
		} else {
			User u = new UserManager().saveUser(email, pw);
			
			if(u != null) {
				rd = request.getServletContext().getRequestDispatcher("/indexpage/index.jsp");
			} else {
				rd = request.getServletContext().getRequestDispatcher("/loginform/login.jsp");
			}
			
		}
		rd.forward(request, response);
	}

}
