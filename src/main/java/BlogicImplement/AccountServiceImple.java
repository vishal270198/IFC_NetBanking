package BlogicImplement;



import ExceptionHandling.InvaliedAccNo;


import ExceptionHandling.LowBalExcep;

import Aspect.Object_Provider;
import Client.Account;
import Dao.AccountDaoInterface;
import daoImpli.AccountDaoImp;

import java.sql.Connection;

import Accservicemethod.AccountService;




public class AccountServiceImple implements AccountService
{

	Account acc;
	AccountDaoInterface dao;

	public void setInfo(String Dao,Connection con)
	{
		dao=Object_Provider.createDAObject(Dao);
		((AccountDaoImp) dao).setConnection(con);
	}
	
	
	
  public int openAccount(String accType,double amount)
{
	acc=new Account(accType,amount);
	acc.setAccBal(amount);
	acc.setAccType(accType);
	
	dao.accountInsertdata(acc);
	
	return acc.getAccNo();
	
}
	
  
  
  
  
  
  public void deposit(int accNo,double amount) throws InvaliedAccNo 
 	{
 	  double bal;
 	  
 		if(acc.getAccNo()!=accNo)
 		{
 			  throw  new InvaliedAccNo("Invalid Account");
 		 }
 		   else
 		   {
 			   bal=acc.getAccBal()+amount;
 				
 			  acc.setAccBal(bal);
 				
 				assert(acc.getAccBal()<bal):"amount deposit is failed";
 				
 				
 				
 				  System.out.println("\n Balance After Deposit ="+bal);
 		   }
 	
 	}
 	
   
   
   
  
  
   
   public void withdrawalMoney(int accNo,double amount) throws LowBalExcep
 	{
 		
 	  double bal;
 		
 		if(acc.getAccNo()!=accNo)
 		{
 			  throw new LowBalExcep("Invalid Account");
 		}
 		   else
 		   {
 			   bal=acc.getAccBal()-amount;
 				
 			  acc.setAccBal(bal);
 				
 				
 				
 				  System.out.println("\n Balance After Widroal Monay ="+bal);
 		   }
 	}
 	
   
   
   
   
   
   public void balanceEnquiry(int accNo) throws InvaliedAccNo
 	{
 	  if( acc.getAccNo()!=accNo)
 	   {
 		  throw new InvaliedAccNo("Invalid Account");
 	   }
 	   else
 	   {
 		   System.out.println("\n Your request is accepted.Please wait for some time....");
 		   
 			  System.out.println("\n Your Current Balance = " +  acc.getAccBal()+ "\n Thank You .Visit Again....");
 	   }
 	}
  
  
  
   
   
  public void moneyTransfers(int accNo,double amount)
	{
		double balance;
	  
	  if( acc.getAccNo()==accNo)
	 {  
//		 System.out.println("\n Enter your amount");
		   
		 balance=acc.getAccBal()-amount;
		         
		 assert(balance==acc.getAccBal()):"Money Transfer is fail";
		         
		   acc.setAccBal(balance);
	 }

	   else 
	   {
		   System.out.println("Account Is Not Valid.Please Check Again.....");
       }	   
  
	  
	}
	
  
  public void printaccDetails(int accNo)
	{
		
	  if(acc.getAccNo()==accNo)
	  {
		  
		  System.out.println("\n Your request is accepted.Please wait for some time....");
		   
		  System.out.println("\n Account number:" +acc.getAccNo());
		  
		  System.out.println("\n Account Type:" +acc.getAccType());
		  
		  System.out.println("\n  Account Balance:" +acc.getAccBal());	  
	  }
	  
	  else
	   {
		   System.out.println("Account Is Not Valid.Please Check Again.....");
	   }
	 	  
	}
	
  
  
  public void closeAccount(int accNo) 
  {
	    // Find the account by matching the provided account number
	    if(acc.getAccNo() == accNo) 
	    {
	        // Check if the account has a balance
	        if(acc.getAccBal() > 0) 
	        {
	            System.out.println("Account has a balance. Please withdraw all funds before closing.");
	        } 
	        else if (acc.getAccBal() < 0) 
	        {
	            System.out.println("Account has a negative balance. Please clear the dues before closing.");
	        } 
	        else 
	        {
	                System.out.println("Closing the account with Account No: " + accNo);
	                 acc.setAccNo(-1);
	                System.out.println("Account successfully closed.");       
	        }
	    } 
	    else 
	    {
	        System.out.println("Account with the provided number not found.");
	    }
	}
}
	  


	  
	  
  
  
  
    
	
	

