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
import Client.Account;
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
			
			String username=request.getParameter("username");
			
			String password=request.getParameter("password");
			
			String type=request.getParameter("accType");
			
			double amount=Double.parseDouble(request.getParameter("amount"));
			
			
			   System.out.println("username:"+username);
		          System.out.println("password:"+password);
			
			int accNo=acc.openAccount(username,password,type,amount);
			
			session.setAttribute("accNo",accNo);
			
			//forward from controller to dyanamic view using RequestDispatcher
			RequestDispatcher rd=request.getRequestDispatcher("ackOA.jsp");
			rd.forward(request, response);
			
		}
		
		
		
		
		if (request.getParameter("id").equals("DM")) 
		{
		    try 
		{
		        // Extract data from request

		        int accNo = Integer.parseInt(request.getParameter("accNumber"));

		        double amount = Double.parseDouble(request.getParameter("amount"));

		        
		        // Validate the input
		        if (amount <= 0) {
		            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Amount must be greater than zero.");
		            return;
		        }

		        // Deposit money and get the updated balance
		        double newBalance = acc.deposit(accNo, amount);

		        // Store the new balance in session
		        session.setAttribute("accBal", newBalance);

		        // Forward to acknowledgment page
		        RequestDispatcher rd = request.getRequestDispatcher("ackDM.jsp");
		        rd.forward(request, response);

		    } catch (NumberFormatException e) {
		        // Handle invalid account number or amount format
		        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid account number or amount.");
		        e.printStackTrace();
		    } catch (InvaliedAccNo e) {
		        // Handle invalid account number
		        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Account number not found.");
		        e.printStackTrace();
		    } catch (Exception e) {
		        // General exception handler
		        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An unexpected error occurred.");
		        e.printStackTrace();
		    }
		}
		
		
			
		if(request.getParameter("id").equals("BE"))
		{
			//first extract the data needed for b_logic
			
			int accNo=Integer.parseInt(request.getParameter("accNumber"));
			
			try {
				
				double balence=acc.balanceEnquiry(accNo);
				
				session.setAttribute("accBal",balence);
				
				//forward from controller to dyanamic view using RequestDispatcher
				
				RequestDispatcher rd=request.getRequestDispatcher("ackBE.jsp");
				rd.forward(request, response);
				
			} 
			catch (InvaliedAccNo e) 
			{		
				e.printStackTrace();
			}
			
		}
		
		if(request.getParameter("id").equals("WM")) {
		    try {
		        // Extract data for withdrawal
		        int accNo = Integer.parseInt(request.getParameter("accNumber"));
		        double amount = Double.parseDouble(request.getParameter("amount"));

		        System.out.println("accNumber: " + accNo);
		        System.out.println("amount: " + amount);

		        // Withdraw money and get the new balance
		        double newBalance = acc.withdrawalMoney(accNo, amount);
		        
		        // Store the new balance in session
		        session.setAttribute("accBal", newBalance);

		        // Forward request to acknowledgment page
		        RequestDispatcher rd = request.getRequestDispatcher("ackWM.jsp");
		        rd.forward(request, response);

		    } catch (Exception e) {
		        e.printStackTrace();
		        // Optionally, handle the exception (e.g., redirect to an error page or show error message)
		    }
		}

		
		if(request.getParameter("id").equals("PD")) {
		    try {
		        // Extract account number from the request
		        int accNo = Integer.parseInt(request.getParameter("accNumber"));

		        System.out.println("accNumber: " + accNo);

		        // Get the account details
		        Account accountDetails = acc.printaccDetails(accNo);

		        // Set the account details in the session so they can be accessed in the JSP
		        session.setAttribute("accountDetails", accountDetails);

		        // Forward the request to the acknowledgment page
		        RequestDispatcher rd = request.getRequestDispatcher("ackPD.jsp");
		        rd.forward(request, response);
		    } catch (InvaliedAccNo e) {
		        e.printStackTrace();
		        // Optionally, handle the exception (e.g., redirect to an error page or show error message)
		    }
		}
		
		
		if (request.getParameter("id").equals("MT")) {
		    try {
		        // Get the sender's account number, receiver's account number, and amount
		        int senderAccNo = Integer.parseInt(request.getParameter("senderAccNumber"));
		        int receiverAccNo = Integer.parseInt(request.getParameter("receiverAccNumber"));
		        double amount = Double.parseDouble(request.getParameter("amount"));

		        System.out.println("Sender Account Number: " + senderAccNo);
		        System.out.println("Receiver Account Number: " + receiverAccNo);
		        System.out.println("Amount: " + amount);

		        // Perform the money transfer
		        double newSenderBalance = acc.moneyTransfers(senderAccNo, receiverAccNo, amount);

		        // Set the sender's new balance in the session
		        session.setAttribute("newSenderBalance", newSenderBalance);

		        // Forward to acknowledgment page
		        RequestDispatcher rd = request.getRequestDispatcher("ackMT.jsp");
		        rd.forward(request, response);

		    } catch (Exception e) {
		        e.printStackTrace();
		        // Optionally, handle the exception (e.g., redirect to an error page or show error message)
		    }
		}


	}

}
