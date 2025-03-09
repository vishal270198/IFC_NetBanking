package ExceptionHandling;


public class InvaliedAccNo extends Exception
{

private String warn;
	
	public  InvaliedAccNo(String warn)
	{
		this.warn=warn;
	}

	
	public String toString() 
	{


		return "Account Number is invalied cheack...."+warn;

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
