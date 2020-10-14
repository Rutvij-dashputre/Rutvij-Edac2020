package Assign1;

import java.util.Scanner;

public class Quest8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter principal, Rate of interest and time respectively ");
        float p, r, t, si;
            p = sc.nextInt();
            r = sc.nextInt();
            t = sc.nextInt();
            si = (p*r*t)/100;
            System.out.println("Simple Interest is: " +si);

    }
}
