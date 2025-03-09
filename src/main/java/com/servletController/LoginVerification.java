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


@WebServlet("/LoginVerification")
public class LoginVerification extends HttpServlet 
{

	Connection con;

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
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("yes done");
		
		try
		{
			// using getparameter check request sender and verification client
			
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			
			
			
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
			if(request.getParameter("id")==null) {
				System.out.println("request.getParameter(\"id\") is null");
			}else {
				System.out.println("Not null ****");
			}
			
			System.out.println("1:"+request.getParameter("old"));

		
			if(request.getParameter("old").equals("old"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	    		rd.forward(request, response);
			}
			
			if(request.getParameter("id").equals("new"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
	    		rd.include(request, response);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
