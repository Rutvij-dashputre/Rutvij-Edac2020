package Assign1;

public class Quest3 {
    public static void main(String[] args) {
        int y;
        int x = 10;
        y = (x*x) + (3*x) - 7;
        System.out.println("Value of y is "+ y);

        x= 15;
        y = x++ + ++x;
        System.out.println("Value of x is " + x);
        System.out.println("Value of y is " + y);

        int z = x++ - --y - --x + x++;
        System.out.println("Value of x is " + x);
        System.out.println("Value of y is " + y);
        System.out.println("Value of z is " + z);

        expression();
    }
    static  void expression(){
        boolean x = true;
        boolean y = false;


        boolean z = x && y || !(x || y);
        System.out.println("Value of z is " + z);
    }
}
