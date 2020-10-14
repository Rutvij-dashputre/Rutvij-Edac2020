package Assign1;

import java.util.Scanner;

public class Quest6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        System.out.println("Enter radius");
        int r = sc.nextInt();
        double pi = 3.14;
        double a = (pi * r * r);
        System.out.println("Area of circle is " + a);
        double c = (2 * pi * r);
        System.out.println("Circumference of circle is " + c);
    }
}
