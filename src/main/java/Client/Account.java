package Client;

public class Account 
{
	
	  public String username;
	  public String password;
	  public int accNo;
	  public String accType;
      public double accBal;
	  public static int series=123321;
	
	  
	  
	  
	  public Account()
	  {
		  this.username="not given";
		  this.password="not given";
		  this.accType="not given";
		  this.accBal=00;
		  this.accNo=series;
	  }
	
	
	  public Account(String username,String password,String accType,double accBal)
	  {
		  this.username=username;
		  this.password=password;
		  this.accNo=series;
		  series++;
		  this.accType=accType;
		  this.accBal=accBal;
		
	  }
	
	  
	
	  
	  
	   public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public void setAccType(String accType)
	   {
		   this.accType=accType;
	   }
	   
	   
	   public void setAccBal(double accBal)
	   {
		   this.accBal=accBal;
	   }
	   
	   
	   public void setAccNo(int accNo)
	   {
		   this.accNo=accNo;
	   }
	   
	   
	   
	   
	
	   
	   public String getAccType()
	   {
		  return accType;
	   }
	   
	   
	   public double getAccBal()
	   {
		   return  accBal;
	   }
	   
	   
	   public int getAccNo()
	   {
		   return accNo;
	   }
	   
	   
	 
	
	public String toString()
	{
	
		return super.toString();
	}

}

