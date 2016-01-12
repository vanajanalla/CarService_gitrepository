package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

import org.apache.catalina.connector.Request;

import bean.AdminBean;
import dao.DBConnection;

/**
 * Servlet implementation class AdminRegServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String AdminId = request.getParameter("AdminId");
		String AdminPassword = request.getParameter("AdminPassword");

		AdminBean adminbean = new AdminBean();
		adminbean.setAdminId(AdminId);
		adminbean.setAdminPassword(AdminPassword);

		HttpSession session = request.getSession();
		session.setAttribute("AdminId", AdminId);

		DBConnection connect = new DBConnection();
		if (connect.loginValidate(adminbean)) {
			RequestDispatcher requestdispatcher = request
					.getRequestDispatcher("AdminView.jsp");
			requestdispatcher.forward(request, response);
		} else {
			out.print("Sorry username or password was incorrect");
			RequestDispatcher requestdispatcher = request
					.getRequestDispatcher("Admin.jsp");
			requestdispatcher.include(request, response);
		}

		out.close();
	}

}
