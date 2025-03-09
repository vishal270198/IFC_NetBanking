package Client;

public class Account 
{
	
	
	  public int accNo;
	  public String acctType;
      public double accBal;
	  public static int series=123321;
	  
	  
	  public Account()
	  {
		  this.acctType="not given";
		  this.accBal=00;
		  this.accNo=series;
	  }
	
	
	  public Account(String accType,double accBal)
	  {
		  this.accNo=series;
		  series++;
		  this.acctType=accType;
		  this.accBal=accBal;
	  }
	
	  
	
	  
	  
	   public void setAccType(String acctType)
	   {
		   this.acctType=acctType;
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
		  return acctType;
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

