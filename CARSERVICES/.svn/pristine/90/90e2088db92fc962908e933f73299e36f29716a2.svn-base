package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

import bean.CarDetailsBean;
import bean.CarOwnerBean;
import bean.CarPolicyBean;
import bean.EmployeeBean;
import bean.AdminBean;
import bean.ServiceBean;


public class DBConnection {
	PreparedStatement ps = null;
	ResultSet rs = null;
	Connection con = null;

	public DBConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/carzDB", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
		}

	}

	public boolean loginValidate(AdminBean adminbean) {

		boolean status = false;
		try {
			ps = con.prepareStatement("select * from Admin_Table where adminId=? and adminPassword=?");
			ps.setString(1, adminbean.getAdminId());

			ps.setString(2, adminbean.getAdminPassword());

			rs = ps.executeQuery();
			

			status = rs.next();
			
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return status;
	}

	public int insertDetails(EmployeeBean employeebean) {
		int result=0;
		try {
			String query = "insert into Employee_Table values(?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, employeebean.getEmployeeId());
			ps.setString(2, employeebean.getEmployeeName());
			ps.setString(3, employeebean.getDesignation());
			ps.setLong(4, employeebean.getMobileNo());
			ps.setString(5, employeebean.getEmailId());
			ps.setString(6, employeebean.getAddress());
			ps.setString(7, employeebean.getJoiningDate());
			ps.setString(8, employeebean.getPreviousExperience());
			result=ps.executeUpdate();
		}

		catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException se) {
				System.out.println(se);
			}
		}
		return result;
	}

	public ArrayList<EmployeeBean> getDetails(String designation) {
		ArrayList<EmployeeBean> arrayemployee = null;
		try {
			EmployeeBean employeebean = new EmployeeBean();
			employeebean.setDesignation(designation);
			arrayemployee = new ArrayList<EmployeeBean>();
			ps = con.prepareStatement("select * from Employee_Table where Designation=?");
			ps.setString(1, employeebean.getDesignation());
			rs = ps.executeQuery();
			while (rs.next()) {
				employeebean.setEmployeeId(rs.getString(1));
				employeebean.setEmployeeName(rs.getString(2));
				employeebean.setMobileNo(rs.getLong(4));
				employeebean.setEmailId(rs.getString(5));
				employeebean.setAddress(rs.getString(6));
				employeebean.setJoiningDate(rs.getString(7));
				employeebean.setPreviousExperience(rs.getString(8));

				arrayemployee.add(employeebean);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return arrayemployee;
	}

	public String getUserName(AdminBean bean) {
		String AdminName = null;
		try {

			String query = "select AdminName from Admin_Table where AdminId=?";
			ps = con.prepareStatement(query);
			ps.setString(1, bean.getAdminId());
			rs = ps.executeQuery();
			while (rs.next()) {

				AdminName = rs.getString(1);
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return AdminName;

	}

	public String loginValidate(EmployeeBean employeebean) {
		String Designation="";
		try {
			String query="select Designation from Employee_Table where EmployeeId=? and MoblieNo=?";
			ps = con.prepareStatement(query);
			ps.setString(1, employeebean.getEmployeeId());

			ps.setLong(2, employeebean.getMobileNo());
			
			rs = ps.executeQuery();

			while (rs.next()) {
				Designation= rs.getString(1);
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
return Designation;
	}

	public String getUserName(EmployeeBean employeebean) {
		String EmployeeName = null;
		try {

			String query = "select EmployeeName from Employee_Table where EmployeeId=?";
			ps = con.prepareStatement(query);
			ps.setString(1, employeebean.getEmployeeId());
			rs = ps.executeQuery();
			while (rs.next()) {
				EmployeeName = rs.getString(1);

				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return EmployeeName;

	}

	public int insertDetails(CarOwnerBean carownerbean,CarDetailsBean cardetailsbean,CarPolicyBean carpolicybean) {
		int q1=0,q2=0,q3=0;
		
		try {
			String query1 = "insert into carowner values(?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query1);
			ps.setString(1, carownerbean.getOwnerID());
			ps.setString(2, carownerbean.getNameOfTheOwner());
			ps.setString(3, carownerbean.getOccupation());
			ps.setString(4, carownerbean.getAddress());
			ps.setString(5, carownerbean.getLocation());
			ps.setString(6, carownerbean.getCity());
			ps.setString(7, carownerbean.getState());
			ps.setLong(8, carownerbean.getPincode());
			ps.setLong(9, carownerbean.getLandNumber());
			ps.setLong(10, carownerbean.getMobileNumber());
			ps.setString(11, carownerbean.getEmailId());
			ps.setString(12, cardetailsbean.getCarRegdNumber());
			q1=ps.executeUpdate();
			String query2 = "insert into cardetails values(?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query2);
			ps.setString(1, cardetailsbean.getCarRegdNumber());
			ps.setLong(2, cardetailsbean.getCarKms());
			ps.setLong(3, cardetailsbean.getCarMake());
			ps.setLong(4, cardetailsbean.getCarModel());
			ps.setLong(5, cardetailsbean.getMftYearOfRegd());
			ps.setString(6, cardetailsbean.getDateOfRegistration());
			ps.setLong(7, cardetailsbean.getEngineNumber());
			ps.setLong(8, cardetailsbean.getChassisNumber());
			ps.setString(9, cardetailsbean.getTypeOfFuel());
			ps.setString(10, cardetailsbean.getCarColor());
			ps.setString(11, carownerbean.getOwnerID());
			q2=ps.executeUpdate();
			String query3 = "insert into carpolicy values(?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query3);
			ps.setString(1, carpolicybean.getInsuranceCompanyName());
			ps.setLong(2, carpolicybean.getPolicyNumber());
			
			ps.setLong(3, carpolicybean.getCoverNoteNumber());
			ps.setString(4, carpolicybean.getCarColor1());
			ps.setString(5, carpolicybean.getPeriodOfInsuranceFrom());
			ps.setString(6, carpolicybean.getPeriodOfInsuranceTo());
			ps.setString(7, carpolicybean.getPeriodOfPollutionFrom());
			ps.setString(8, carpolicybean.getPeriodOfPollutionTo());
			ps.setString(9, carownerbean.getOwnerID());
			q3=ps.executeUpdate();
			
		}

		catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				ps.close();
				con.close();
			} catch (SQLException se) {
				System.out.println(se);
			}
		}
		return q1+q2+q3;
	}
	
	public boolean carValidate(CarDetailsBean cardetailsbean) 
	{

		boolean status = false;
		try {
			ps = con.prepareStatement("select Car_RegdNo from cardetails where Car_RegdNo=?");
			ps.setString(1, cardetailsbean.getCarRegdNumber());

			
			rs = ps.executeQuery();

			status = rs.next();
			
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return status;
	}
	
public ArrayList<EmployeeBean> allDetails(EmployeeBean bean)
	
	{
		ArrayList<EmployeeBean> obj=new ArrayList<EmployeeBean>();
		EmployeeBean empbean=new EmployeeBean();
		try
		{
		
		
	String employeeid="select * from AddEmployee where EmployeeId=?";
	ps=con.prepareStatement(employeeid);
	
	ps.setString(1, bean.getEmployeeId());
	
	rs=ps.executeQuery();
	while(rs.next())
	{
		empbean.setEmployeeName(rs.getString(2));
		empbean.setDesignation(rs.getString(3));
		empbean.setMobileNo(rs.getLong(4));
		empbean.setEmailId(rs.getString(5));
		empbean.setAddress(rs.getString(6));
		empbean.setJoiningDate(rs.getString(7));
		empbean.setPreviousExperience(rs.getString(8));
		
		obj.add(empbean);
	}
	
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}
		
			
		 return obj;
			
		}
public  ArrayList<EmployeeBean> allDetails()
{
	ArrayList<EmployeeBean> arrayobj = null;
	try {
		EmployeeBean bean;
//		bean = new EmployeeBean();
//		bean.setEmployeeId(employeeid);

		arrayobj = new ArrayList<EmployeeBean>();
		ps = con.prepareStatement("select EmployeeId from AddEmployee");
//		ps.setString(1, bean.getEmployeeId());
		rs = ps.executeQuery();
		
		while (rs.next())
			
		{
			bean = new EmployeeBean();
			bean.setEmployeeId(rs.getString(1));
//			bean.setEmployeeName(rs.getString(2));
//			bean.setDesignation(rs.getString(3));


            arrayobj.add(bean);

		}

	} catch (Exception e) {
		System.out.println(e);
	} finally {
		try {
			// re.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	return arrayobj;
}

 public ArrayList<CarOwnerBean> allDetails(String Car_RegdNo)
 {
	 ArrayList<CarOwnerBean> array=new ArrayList<CarOwnerBean>();
	 CarOwnerBean carbean=new CarOwnerBean();
	 try{
	 String str="select OwnerID,Owner_Name,Owner_Mobilenumber from carowner where owner_CarRegNo=?";
	ps=con.prepareStatement(str);
	ps.setString(1, Car_RegdNo);
	rs=ps.executeQuery();
	while(rs.next())
	{
		carbean.setOwnerID(rs.getString(1));
		carbean.setNameOfTheOwner(rs.getString(2));
		carbean.setMobileNumber(rs.getLong(3));
		array.add(carbean);
	}
	
	 }
	 catch(Exception e)
	 {
		 System.out.println(e);
	 }
	 return array;
 }
   
 public int insertService(String ownerid,String car_regdno,String[] options)
 {
	 int res=0;
	 try{
	 String query="insert into services values(?,?,?,?,?,?,?,?,?,?,?,?)";
	 ps=con.prepareStatement(query);
	 ps.setString(1, ownerid);
	 ps.setString(2, car_regdno);
	 for(int i=0;i<=options.length-1;i++)
	 {
		 ps.setString(i+3, options[i]);
	 }
	 
	res= ps.executeUpdate();
	 
	 }
	 catch(Exception e)
	 {
		 System.out.println(e);
	 }
	 finally
	 {
		 try{
			 ps.close();
		 }catch(SQLException se){
			 System.out.println(se);
		 }
	 }
	  return res;
	  }

public ArrayList<ServiceBean> getService(String Car_RegdNo,String OwnweId)
{
	ArrayList<ServiceBean> arryobj=new ArrayList<ServiceBean>();
	ServiceBean sbean=new ServiceBean();
	String str="select service1,service2,service3,service4 from cardetails where ";
	return arryobj;
}


public ArrayList<CarDetailsBean> getDetailsMetho(String carkms)
{
	ArrayList<CarDetailsBean> arraylist=new ArrayList<CarDetailsBean>();
	CarDetailsBean cbean=new CarDetailsBean();
	try{
	String query="select Car_kms  from cardetails where Car_RegdNo=?" ;
	ps=con.prepareStatement(query);
	ps.setString(1, carkms);
	rs=ps.executeQuery();
	while(rs.next())
	{
		cbean.setCarKms(rs.getLong(1));
		arraylist.add(cbean);
	}
	}catch(Exception e)
	{
		System.out.println(e);
	}
	return arraylist;
	
}
	



public   HashMap<ArrayList<CarOwnerBean>,ArrayList<CarDetailsBean>> method(String str)
{
	HashMap<ArrayList<CarOwnerBean>,ArrayList<CarDetailsBean>> mapobj=new  HashMap<ArrayList<CarOwnerBean>,ArrayList<CarDetailsBean>>();
	ArrayList<CarOwnerBean> arraylist=new ArrayList<CarOwnerBean>();
	ArrayList<CarDetailsBean> arraylist1=new ArrayList<CarDetailsBean>();
	try
	{	
	CarOwnerBean bean=new CarOwnerBean();
	CarDetailsBean detailsBean=new CarDetailsBean();
	String ownerIDValue=getOwnerId(str);
	String query="select Owner_Name,Owner_Mobilenumber from carowner where OwnerId=?";
	ps=con.prepareStatement(query);
	ps.setString(1, ownerIDValue);
	rs=ps.executeQuery();
	while(rs.next())
	{
		bean.setNameOfTheOwner(rs.getString(1));
		bean.setMobileNumber(rs.getLong(2));
		arraylist.add(bean);
			}
	String query2="select Car_RegdNo,Car_Kms from cardetails where ownerId=?";
	ps=con.prepareStatement(query2);
	ps.setString(1, ownerIDValue);
	rs=ps.executeQuery();
	while(rs.next())
	{
		detailsBean.setCarRegdNumber(rs.getString(1));
		detailsBean.setCarKms(rs.getLong(2));
		arraylist1.add(detailsBean);
	}
	
	}
	catch(Exception se)
	{
		System.out.println(se);
	}
	mapobj.put(arraylist, arraylist1);
	return mapobj; 
	

}

public String[] getServiecs(String Car_Reg_Id)
{
	String[] services=new String[13];
	
	try{
		
		String owner_Id=getOwnerId(Car_Reg_Id);
	String query="select * from services where OwnerId=?";
	ps=con.prepareStatement(query);
	ps.setString(1, owner_Id);
	rs=ps.executeQuery();
	while(rs.next())
		
	{
		for(int i=3;i<=12;i++)
		{
			services[i]=rs.getString(i);
		}
	}
	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return services;
}


public String getOwnerId(String str)throws Exception
{
	String ownerIDValue=null;
	
	if(str!=null)
	{
	String query="select OwnerID from cardetails where ownerID=? ";
	ps=con.prepareStatement(query);
	ps.setString(1,str );
	rs=ps.executeQuery();
	while(rs.next())
	{
		ownerIDValue=rs.getString(1);	
	
	}
	}
	 if(ownerIDValue==null)
	{
		String query="select OwnerID from cardetails where Car_RegdNo=? ";
		ps=con.prepareStatement(query);
		ps.setString(1,str );
		rs=ps.executeQuery();
		while(rs.next())
		{
			ownerIDValue=rs.getString(1);	
		
		}
	}
	 return ownerIDValue;
}








}
