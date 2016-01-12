package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import bean.*;
import dao.DBConnection;

/**
 * Servlet implementation class JobSheet
 */
@WebServlet("/JobSheet")
public class JobSheet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobSheet() {
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
		PrintWriter out = response.getWriter();

		String Car_RegdNo = request.getParameter("carRegNo");
		

		CarDetailsBean cardetailsbean = new CarDetailsBean();
		cardetailsbean.setCarRegdNumber(Car_RegdNo);
		

		HttpSession session = request.getSession();
		session.setAttribute("carregdno", Car_RegdNo);
		
		DBConnection connect = new DBConnection();
		ArrayList<CarOwnerBean> array=connect.allDetails(Car_RegdNo);
		Iterator<CarOwnerBean> iterator=array.iterator();
		CarOwnerBean ownerbean=null;
		while(iterator.hasNext())
		{
			ownerbean=(CarOwnerBean)iterator.next();
			session.setAttribute("ownerid", ownerbean.getOwnerID());
			session.setAttribute("ownername", ownerbean.getNameOfTheOwner());
			session.setAttribute("ownermobile", ownerbean.getMobileNumber());
		}
		
		
		if (connect.carValidate(cardetailsbean))
		{
			
			RequestDispatcher requestdispatcher = request
					.getRequestDispatcher("JobSheet.jsp");
			requestdispatcher.forward(request, response);
		} 
	else 
	
	{
			
			RequestDispatcher requestdispatcher = request
					.getRequestDispatcher("AddCarDetails.jsp");
			requestdispatcher.forward(request, response);
		}

		out.close();
	}

	

	

	}


