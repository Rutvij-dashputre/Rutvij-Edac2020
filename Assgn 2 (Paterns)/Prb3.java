class Prb3
{
public static void main(String arg[])
	{
         
	for(int i=1;i<=9;i++)
		{
		for(int j=9;j>i;j--)
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