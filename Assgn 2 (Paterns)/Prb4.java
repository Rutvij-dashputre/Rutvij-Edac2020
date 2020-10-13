
class Prb4
{
public static void main(String arg[])
	{
         
	for(int i=1;i<=9;i++)
		{
		for(int j=9;j>i;j--)
		{
                 System.out.print(" ");
      		}
                for(int k=1;k<=i;k++)
		{
                 System.out.print(k);
               
      		}
                 for(int m=i-1;m>=1;m--)
		{
                 System.out.print(m);
               
      		}
                
                
               System.out.println();
		}
	}
}