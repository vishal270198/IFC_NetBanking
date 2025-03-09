package Dao;

import Client.Account;

public interface AccountDaoInterface 
{

	
	public int accountInsertdata(Account acc);
	
	
	public Account retriveData(int accNo);


	public int updateAccData(Account acc);
	

	public void deleteAccount(int accNo);
	
}
