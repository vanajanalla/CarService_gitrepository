package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.DBConnection;
import bean.EmployeeBean;

/**
 * Servlet implementation class AddEmployeeServlet
 */
@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String EmployeeId=request.getParameter("employeeid");
		String EmployeeName=request.getParameter("employeename");
		String Designation=request.getParameter("List");
		long MobileNo=Long.parseLong(request.getParameter("mobileNo"));
		String EmailId=request.getParameter("emailid");
		String Address=request.getParameter("address");
		String JoiningDate=request.getParameter("joiningdate");
		String  PreviousExperience=request.getParameter("prevoiusexperience");
		
		EmployeeBean employeebean=new EmployeeBean();
		employeebean.setEmployeeId(EmployeeId);
		employeebean.setEmployeeName(EmployeeName);
		employeebean.setDesignation(Designation);
		employeebean.setMobileNo(MobileNo);
		employeebean.setEmailId(EmailId);
		employeebean.setAddress(Address);
		employeebean.setJoiningDate(JoiningDate);
		employeebean.setPreviousExperience(PreviousExperience);
		 DBConnection connect=new DBConnection() ;
		 int result=connect.insertDetails(employeebean);
		if(result>0)
		{
			out.print("Successfully Registered");
		}
		
		 
		 
		
	}

}
