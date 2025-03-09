package Aspect;


import Dao.AccountDaoInterface;

import Accservicemethod.AccountService;
import daoImpli.AccountDaoImp;



public class Object_Provider 
{
	
	
	public static AccountService CreatObject(String name)
	{
		
		AccountService acc=null;
		
		try
		{
	
			acc=(AccountService) Class.forName(name).newInstance();

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return acc;
	}
	

	
	
	
	// It is just provide name of object replace by service implimention 
	
	public static AccountDaoInterface createDAObject(String name)
	{

		AccountDaoInterface dao=null;
		
		try
		{
			
			System.out.println("Name:"+name);
			dao=(AccountDaoInterface) Class.forName(name).newInstance();
			
			System.out.println("object provoided:"+dao);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dao;
	}
	
}
