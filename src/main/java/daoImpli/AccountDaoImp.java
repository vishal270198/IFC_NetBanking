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
		 this.con=con;
	 }
	 
	 
	 
	 
	public int accountInsertdata(Account acc)                             //create new account
	{
		 int updatecount=0;
		
		try {
			
			
			  prs=con.prepareStatement("insert into baccount values(?,?,?)");
			      
			    prs.setInt(1,acc.getAccNo());
			    prs.setString(2,acc.getAccType());
			    prs.setDouble(3,acc.getAccBal() );
			    
			     updatecount=prs.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return updatecount;
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
			int no=rs.getInt(1);
			String Type=rs.getString(2);
			double bal=rs.getDouble(3);
			
			acc=new Account(Type,bal);
			
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
			
			int no=rs.getInt(1);
			String Type=rs.getString(2);
			double bal=rs.getDouble(3);
				
			acc=new Account(Type,bal);
			
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





	
	}

	
