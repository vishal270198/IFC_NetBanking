package ExceptionHandling;

public class LowBalExcep extends Exception
{

      private String msg;
	
	public LowBalExcep(String msg)
	{
		this.msg=msg;
	}

	
	public String toString()
	{
		
		return "Sorry your balance is low...."+msg;
	}
	
}
