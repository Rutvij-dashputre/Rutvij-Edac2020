package Assign1;

import java.util.Scanner;

public class Quest15 {
    public static void main(String[] args) {


        Scanner sc = new Scanner(System.in);

        System.out.println("Enter age");
        int age = sc.nextInt();

        System.out.println("Enter sex: M/F");
        int sex = sc.next().charAt(0);

        System.out.println("Are you married? Y/N");
        int married = sc.next().charAt(0);

        // checking if user is female
        if (sex == 'F') {
            System.out.println("You will work only in urban areas");
        }

        // checking if user is male
        if (sex == 'M') {
            if ((age >= 20) && (age < 40)) {
                System.out.println("You may work anywhere");
            } else if ((age >= 40) && (age < 60)) {
                System.out.println("You will work only in urban areas");
            } else {
                System.out.println("ERROR");
            }
        }
    }
}
