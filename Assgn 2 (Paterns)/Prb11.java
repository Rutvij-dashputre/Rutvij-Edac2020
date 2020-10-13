class Prb11
{
public static void main(String arg[])
	{
         
	for(int i=1;i<=6;i++)
		{
		for(int j=6;j>i;j--)
		{
                 System.out.print(" ");
      		}
                for(int p=1;p<=i;p++)
		{
                 System.out.print("* ");
      		}

               System.out.println();
		}
	}
}