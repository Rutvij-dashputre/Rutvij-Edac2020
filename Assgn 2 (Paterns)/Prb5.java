
class Prb5
{
public static void main(String arg[])
	{
         
	for(int i=1;i<=9;i++)
{int c;
for(int j=1;j<=9;j++)
{if(j>=10-i)
System.out.print(j);
else
System.out.print(" ");
}
for(int k=1;k<=8;k++)
{
if(k<i && i!=1)
{
c=9-k;
System.out.print(c);
c=0;
}
else
System.out.print(" ");
}

System.out.println();

}
}
}