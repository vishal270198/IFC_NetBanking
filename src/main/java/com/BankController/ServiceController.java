package com.BankController;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Accservicemethod.AccountService;
import Aspect.Object_Provider;
import BlogicImplement.AccountServiceImple;
import ExceptionHandling.InvaliedAccNo;
import daoImpli.AccountDaoImp;




@WebServlet("/ServiceController")
public class ServiceController extends HttpServlet
{
	Connection con;
	String blogic;
	String daoImp;
	
	public void init()
	{
		System.out.println("calling Init()");
		String driver=getServletConfig().getServletContext().getInitParameter("driver");
		String url=getServletConfig().getServletContext().getInitParameter("url");
		String username=getServletConfig().getServletContext().getInitParameter("username");
		String password=getServletConfig().getServletContext().getInitParameter("password");
		
		try
		{
			 System.out.println("Trying connection ");
	          Class.forName(driver);
	          System.out.println("started connection ");
	          System.out.println("url :"+url);
	          System.out.println("username:"+username);
	          System.out.println("password:"+password);
			con=DriverManager.getConnection(url, username, password);
			
			System.out.println("connected sucessfully");
		}
		catch(Exception e)
		{
			
		}
		
		 blogic=getServletConfig().getInitParameter("bClass");
		 
		 daoImp=getServletConfig().getInitParameter("DAOClass");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	    //get the obj of blogic class from provider class
		
		AccountService acc=Object_Provider.CreatObject(blogic);
		
		((AccountServiceImple) acc).setInfo(daoImp,con);
		
		HttpSession session=request.getSession(false);
		
		//identify the view page and then call reletative mathod
		
		if(request.getParameter("id").equals("AO"))
		{
			//first extract the data needed for b_logic
			String type=request.getParameter("accType");
			double amount=Double.parseDouble(request.getParameter("amount"));
			int accNo=acc.openAccount(type,amount);
			
			session.setAttribute("accNo",accNo);
			
			//forward from controller to dyanamic view using RequestDispatcher
			RequestDispatcher rd=request.getRequestDispatcher("ackOA.jsp");
			rd.forward(request, response);
			
		}
		if(request.getParameter("id").equals("BE"))
		{
			//first extract the data needed for b_logic
			int accNo=Integer.parseInt(request.getParameter("accNumber"));
			try {
				acc.balanceEnquiry(accNo);
			} 
			catch (InvaliedAccNo e) 
			{
				
				e.printStackTrace();
			}
			
		}
	}

}
