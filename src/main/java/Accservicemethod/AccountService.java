package Accservicemethod;

import ExceptionHandling.InvaliedAccNo;
import ExceptionHandling.LowBalExcep;


public interface AccountService 
{
    int openAccount(String accType,double amount);
	
	void deposit(int accNo,double amount) throws InvaliedAccNo;
	
	void withdrawalMoney(int accNo,double amount)throws LowBalExcep;
	
	void balanceEnquiry(int accNo) throws InvaliedAccNo;
	
	void moneyTransfers(int accNo,double amount);
	
    void printaccDetails(int accNo);
    
    void closeAccount(int accNo);
	
}
