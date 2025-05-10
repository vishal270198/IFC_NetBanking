package daoImpli;

import java.sql.Connection;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Client.Account;
import Dao.AccountDaoInterface;





public class AccountDaoImp implements AccountDaoInterface
{
    //create databases connection with driver
	
	Connection con;
	
	PreparedStatement prs;
	
	 ResultSet rs;
	
	
	
	 public void setConnection(Connection con)
	 {
		 System.out.println("inside set connection...");
		 this.con=con;
	 }
	 
	 
	 
	 
	 public int accountInsertdata(Account acc) {  
		    int updateCount = 0;  

		    System.out.println("Inside accountInsertdata...");  

		    try {  
		        if (con == null) {  
		            System.out.println("Database connection is NULL!");  
		            return 0;  
		        }  

		        String query = "INSERT INTO baccount (username, password, accNo, accType, accBal) VALUES (?, ?, ?, ?, ?)";  
		        prs = con.prepareStatement(query);  

		        // Setting values in the prepared statement  
		        prs.setString(1, acc.getUsername());  
		        prs.setString(2, acc.getPassword());  
		        prs.setInt(3, acc.getAccNo());  
		        prs.setString(4, acc.getAccType());  
		        prs.setDouble(5, acc.getAccBal());  

		        updateCount = prs.executeUpdate();  

		        if (updateCount > 0) {  
		            System.out.println("Data successfully inserted into the database!");  
		        } else {  
		            System.out.println("Data insertion failed!");  
		        }  

		    } catch (SQLException e) {  
		        System.out.println("SQL Exception: " + e.getMessage());  
		        e.printStackTrace();  
		    }  

		    return updateCount;  
		}
	
	
	
	

	@Override
	public Account retriveData(int accNo)                      //creat kelelya account madhun information ghene
	{
		Account acc=null;                                    //Account cha object create karne
		
		try 
		{
			prs=con.prepareStatement("select * from baccount where accNo=?");
			
			prs.setInt(1,accNo);
			
			rs=prs.executeQuery();
			
			if(rs.next())   //result set which is hoild result of account
			{
		
				String username=rs.getString(1);
				String password=rs.getString(2);
			    int no=rs.getInt(3);
			    String Type=rs.getString(4);
			    double bal=rs.getDouble(5);
		
			
			acc=new Account(username,password,Type,bal);
			
			acc.setAccNo(accNo);		
			}
			else
			{
				acc=null;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return acc;
	}

	
	
	public int updateAccData(Account acc)
	{
                    int updatecount=0;                        //Account cha object create karne
		
		try 
		{
			prs=con.prepareStatement("update baccount set accBal=? where accNo=?");
			
			prs.setDouble(1,acc.accBal);
			
			prs.setInt(2,acc.getAccNo());
			
			 updatecount=prs.executeUpdate();
			
			rs.next();                                         //result set which is hoild result of account
			
			String username=rs.getString(1);
			String password=rs.getString(2);
		    int no=rs.getInt(3);
		    String Type=rs.getString(4);
		    double bal=rs.getDouble(5);
			
			
			acc=new Account(username,password,Type,bal);
			
			acc.setAccBal(bal);
			
			  if(updatecount>0)
		         {
		        	 System.out.println("Account Update succesfully");
		         }
		         else
		         {
		        	 System.out.println("Account Not Update succesfully");
		         }
	}
	catch(Exception e)
		{
		        e.printStackTrace();
		}
		return updatecount;
	}

	
	

	@Override
	public void deleteAccount(int accNo)
	{    
		int updatecount=0;
		
			try 
			{
				prs=con.prepareStatement("delete baccount where accNo=?");
				
				prs.setInt(1,accNo);
				
				 updatecount=prs.executeUpdate();
			        
		         if(updatecount>0)
		         {
		        	 System.out.println("Account is  closed succesfully");
		         }
		         else
		         {
		        	 System.out.println("Account is not closed succesfully");
		         }
	        }	
			catch(Exception e)
			{
				e.printStackTrace();
			}
    }




	
	public boolean verifyUser(String username, String password) {
	    boolean isValid = false;
	    
	    try {
	        String query = "SELECT * FROM baccount WHERE username=? AND password=?";
	        prs = con.prepareStatement(query);
	        prs.setString(1, username);
	        prs.setString(2, password);
	        
	        rs = prs.executeQuery();
	        
	        if (rs.next()) {  
	            isValid = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return isValid;
	}

	}

	
