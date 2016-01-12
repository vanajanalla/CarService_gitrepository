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
import controller.*;
import dao.DBConnection;
import bean.CarDetailsBean;
import bean.CarOwnerBean;
import bean.CarPolicyBean;

/**
 * Servlet implementation class CarServlet
 */
@WebServlet("/CarServlet")
public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarServlet() {
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
		
		HttpSession session=request.getSession();

	String NameoftheOwner=request.getParameter("nameoftheowner");
	String Occupation=request.getParameter("occupation");
	String Address=request.getParameter("address");
	String Location=request.getParameter("location");
	String City=request.getParameter("city");
	String State=request.getParameter("state");
	long Pincode=Long.parseLong(request.getParameter("pincode"));
	long Landnumber=Long.parseLong(request.getParameter("landnumber"));
	long Mobilenumber=Long.parseLong(request.getParameter("mobilenumber"));
	String Emailid=request.getParameter("emailid");
	String OwnerID=RandomGenerate.generateID(NameoftheOwner);
	CarOwnerBean cobean=new CarOwnerBean();//set the parameters through bean class object
	session.setAttribute("owner", OwnerID);
	 cobean.setOwnerID(OwnerID);
	 cobean.setNameOfTheOwner(NameoftheOwner);
	 cobean.setOccupation(Occupation);
	 
	 cobean.setAddress(Address);
	 cobean.setLocation(Location);
	 cobean.setCity(City);
	 cobean.setState(State);
	 cobean.setPincode(Pincode);
	 cobean.setLandNumber(Landnumber);
	 cobean.setMobileNumber(Mobilenumber);
	 cobean.setEmailId(Emailid);
	
	String Carregdnumber=(String)session.getAttribute("carregno");
	
	long Carkms=Long.parseLong(request.getParameter("carkms"));
	long Carmake=Long.parseLong(request.getParameter("carmake"));
	long Carmodel=Long.parseLong(request.getParameter("carmodel"));
	long Mftyearofregd=Long.parseLong(request.getParameter("mftyearofregd"));
	String Dateofregistration=request.getParameter("dateofregistration");
	long Enginenumber=Long.parseLong(request.getParameter("enginenumber"));
	long Chassisnumber=Long.parseLong(request.getParameter("chassisnumber"));
	String Typeoffuel=request.getParameter("typeoffuel");
	String Carcolor=request.getParameter("carcolor");
	

	
	CarDetailsBean cdbean=new CarDetailsBean();////setting the parameters through bean class object
	
	cdbean.setCarRegdNumber(Carregdnumber);
	cdbean.setCarKms(Carkms);
	cdbean.setCarMake(Carmake);
	cdbean.setCarModel(Carmodel);
	cdbean.setMftYearOfRegd(Mftyearofregd);
	cdbean.setDateOfRegistration(Dateofregistration);
	cdbean.setEngineNumber(Enginenumber);
	cdbean.setChassisNumber(Chassisnumber);
	cdbean.setTypeOfFuel(Typeoffuel);
	cdbean.setCarColor(Carcolor);
	
	
	
	String Insurancecompanyname=request.getParameter("insurancecompanyname");
	long Policynumber=Long.parseLong(request.getParameter("policynumber"));
	/*String Carcolor1=request.getParameter("carcolor1");*/
	long Covernotenumber=Long.parseLong(request.getParameter("covernotenumber"));
	String Periodofinsurancefrom=request.getParameter("periodofinsurancefrom");
	String Periodofinsuranceto=request.getParameter("periodofinsuranceto");
	String Periodofpollutionfrom=request.getParameter("periodofpollutionfrom");
	String Periodofpollutionto=request.getParameter("periodofpollutionto");
	
	CarPolicyBean cpbean=new CarPolicyBean();//setting the parameters through bean class object
	cpbean.setInsuranceCompanyName(Insurancecompanyname);
	cpbean.setPolicyNumber(Policynumber);
	/*cpbean.setCarColor1(Carcolor1);*/
	
	cpbean.setCarColor1(Carcolor);
	cpbean.setCoverNoteNumber(Covernotenumber);
	cpbean.setPeriodOfInsuranceFrom( Periodofinsurancefrom);
	cpbean.setPeriodOfInsuranceTo( Periodofinsuranceto);
	cpbean.setPeriodOfPollutionFrom(Periodofpollutionfrom);
	cpbean.setPeriodOfPollutionTo(Periodofpollutionto);
	
	DBConnection connect=new DBConnection();
	int result=connect.insertDetails(cobean, cdbean, cpbean);
	RequestDispatcher reqdis=request.getRequestDispatcher("BillingService.jsp");
	reqdis.forward(request, response);
   	
	out.close();
		
	}

}



