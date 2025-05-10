package com.servletController;

import java.io.IOException;



import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoImpli.AccountDaoImp;
import Dao.AccountDaoInterface;



@WebServlet("/LoginVerification")
public class LoginVerification extends HttpServlet 
{
	  Connection con;
	  private AccountDaoInterface daoif;
	  
	  
	public void init()
	{
		try
		{
			String driver=getServletConfig().getServletContext().getInitParameter("driver");
			String url=getServletConfig().getServletContext().getInitParameter("url");
			String username=getServletConfig().getServletContext().getInitParameter("username");
			String password=getServletConfig().getServletContext().getInitParameter("password");
			
			
			Class.forName(driver);
			
			con=DriverManager.getConnection(url, username, password);
			
			
			daoif=new AccountDaoImp();
			((AccountDaoImp) daoif).setConnection(con);
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    System.out.println("Request received!");

	    try {
	        PrintWriter out = response.getWriter();
	        response.setContentType("text/html");

	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String id = request.getParameter("id");  // Checking if new or old user

	        if ("old".equals(id)) 
	        {  
	            // **LOGIN LOGIC**
	            boolean isValid = daoif.verifyUser(username, password);

	            if (isValid) 
	            {
	                System.out.println("Login Successful!");
	                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	                rd.forward(request, response);
	            }
	            else 
	            {
	                out.println("<script>alert('Invalid Username or Password!');window.location='Login.jsp';</script>");
	            }
	        } 
	        else if ("new".equals(id)) 
	        {  
	            // **SIGNUP LOGIC - Redirect to Open Account Page**
	            System.out.println("Redirecting new user to Open Account page...");
	            response.sendRedirect("openAccount.jsp");
	        }
	    } 
	    catch (Exception e) 
	    {
	        e.printStackTrace();
	    }
	}
}
