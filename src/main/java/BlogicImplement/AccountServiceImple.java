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
	
	
	
  public int openAccount( String username,String password,String accType,double amount)
{
	  
	acc=new Account(username,password,accType,amount);
	
	acc.setUsername(username);
	acc.setPassword(password);
	acc.setAccBal(amount);
	acc.setAccType(accType);
	
	System.out.println("dao.accountInsertdata" +acc);
	dao.accountInsertdata(acc);
	
	System.out.println("dao.accountInsertdata" +acc);
	
	return acc.getAccNo();
	
}
	
  
  
  public double deposit(int accNo, double amount) throws InvaliedAccNo {
	    // Retrieve the account from the database
	    Account acc = dao.retriveData(accNo);
	    if (acc == null) {
	        throw new InvaliedAccNo("Invalid Account Number");
	    }

	    // Perform the deposit operation
	    double newBalance = acc.getAccBal() + amount; // Update the balance

	    // Set the new balance
	    acc.setAccBal(newBalance);

	    // Update the database with the new balance
	    int updateCount = dao.updateAccData(acc);
	    if (updateCount <= 0) {
	        throw new RuntimeException("Failed to update account balance in the database.");
	    }

	    return newBalance;
	}


 	
   
   
   
  
  
   
   public double withdrawalMoney(int accNo,double amount) throws LowBalExcep
 	{
 		
	   Account acc = dao.retriveData(accNo); // Get account details

	  
	    if (acc.getAccBal() < amount) {
	        throw new LowBalExcep("Insufficient balance.");
	    }

	    // Deduct the amount from the current balance
	    double newBalance = acc.getAccBal() - amount;
	    acc.setAccBal(newBalance); // Update the account object with the new balance

	    // Update the account in the database with the new balance
	    int updateCount = dao.updateAccData(acc);

	    if (updateCount > 0) {
	        System.out.println("Withdrawal successful, new balance: " + newBalance);
	    } else {
	        System.out.println("Withdrawal failed.");
	        throw new RuntimeException("Failed to withdraw money.");
	    }

	    return newBalance; // Return the updated balance
 	}
 	
   
   
   
   
   
   public double balanceEnquiry(int accNo) throws InvaliedAccNo
 	{
	   Account acc=dao.retriveData(accNo);
	   
 	  if( acc.getAccNo()!=accNo)
 	   {
 		  throw new InvaliedAccNo("Invalid Account");
 	   }
 	   else
 	   {
 		 return acc.getAccBal();
 	   }
 	}
  
  
  
   
   
  public double moneyTransfers(int senderAccNo, int receiverAccNo, double amount) throws InvaliedAccNo, LowBalExcep 
  {
	    // Retrieve sender and receiver accounts
	  
	    Account senderAcc = dao.retriveData(senderAccNo);
	    Account receiverAcc = dao.retriveData(receiverAccNo);

	    
	    // Check if both accounts exist
	    if (senderAcc == null || receiverAcc == null) {
	        throw new InvaliedAccNo("Invalid account number.");
	    }

	    
	    // Check if the sender has sufficient balance
	    if (senderAcc.getAccBal() < amount) {
	        throw new LowBalExcep("Insufficient balance.");
	    }

	    
	    // Deduct the amount from sender's account
	    double senderNewBalance = senderAcc.getAccBal() - amount;
	    senderAcc.setAccBal(senderNewBalance);

	    
	    // Add the amount to receiver's account
	    double receiverNewBalance = receiverAcc.getAccBal() + amount;
	    receiverAcc.setAccBal(receiverNewBalance);

	    
	    // Update the accounts in the database
	    int senderUpdateCount = dao.updateAccData(senderAcc);
	    int receiverUpdateCount = dao.updateAccData(receiverAcc);

	    
	    if (senderUpdateCount > 0 && receiverUpdateCount > 0) 
	    {
	        System.out.println("Money transfer successful.");
	    } 
	    else 
	    {
	        throw new RuntimeException("Money transfer failed.");
	    }

	    return senderNewBalance; // Return the new balance of the sender's account
  
  }
	
  
  public Account printaccDetails(int accNo) throws InvaliedAccNo
	{
		
	  Account acc = dao.retriveData(accNo);  // Fetch the account details from the database

	    if (acc == null) {
	        throw new InvaliedAccNo("Account number not found.");
	    }

	    return acc;  // Return the account details
	 	  
	}
	
  
  
  public void closeAccount(int accNo) 
  {
	    // Find the account by matching the provided account number
	    if(acc.getAccNo() == accNo) 
	    {
	        // Check if the account has a balance , 
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
	  


	  
	  
  
  
  
    
	
	

