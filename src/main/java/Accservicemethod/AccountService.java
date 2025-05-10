package Accservicemethod;

import Client.Account;
import ExceptionHandling.InvaliedAccNo;
import ExceptionHandling.LowBalExcep;


public interface AccountService 
{
    int openAccount(String username,String password,String accType,double amount);
	
	double deposit(int accNo,double amount) throws InvaliedAccNo;
	
	double withdrawalMoney(int accNo,double amount)throws LowBalExcep;
	
	double balanceEnquiry(int accNo) throws InvaliedAccNo;
	
	double moneyTransfers(int senderAccNo, int receiverAccNo, double amount) throws InvaliedAccNo, LowBalExcep;
	
    Account printaccDetails(int accNo) throws InvaliedAccNo;
    
    void closeAccount(int accNo);
	
}
