package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DBConnection;
import bean.CarDetailsBean;
import bean.CarOwnerBean;
import bean.ServiceBean;

/**
 * Servlet implementation class ServiceServlet
 */
@WebServlet("/ServiceServlet")
public class ServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		
		String ownerid=(String)session.getAttribute("ownerid");
		String carregdno=(String)session.getAttribute("carregdno");
		
		
		
		CarDetailsBean cardetailsbean = new CarDetailsBean();
		cardetailsbean.setCarRegdNumber(carregdno);
		
		CarOwnerBean carownerbean=new CarOwnerBean();
		carownerbean.setOwnerID(ownerid);
		
		String[] options=request.getParameterValues("option");
		String[] extraoption=new String[10];
		if(options.length==10)
		{
			for(int i=0;i<=9;i++)
			{
				extraoption[i]=options[i];
			}
		}
		else if(options.length<10)
		{
			for(int j=0;j<=options.length-1;j++)
				{
					extraoption[j]=options[j];
				}
			for(int k=options.length;k<=9;k++)
			{
				extraoption[k]=" ";
			}
			
		}
		
		
		DBConnection connect=new DBConnection();
		  int res= connect.insertService(ownerid,carregdno,extraoption);
		  if(res==1)
		  {
			  RequestDispatcher req=request.getRequestDispatcher("BillingService.jsp");
			  req.forward(request, response);
		  }
	}	

}
