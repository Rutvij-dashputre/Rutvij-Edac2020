package Assign1;

import java.util.Scanner;

public class Quest7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the marks obtained :-");
        int Subject1 = sc.nextInt();
        int Subject2 = sc.nextInt();
        int Subject3 = sc.nextInt();
        int Subject4 = sc.nextInt();
        int Subject5 = sc.nextInt();
        double total = Subject1 + Subject2 + Subject3 + Subject4 + Subject5;
        double percentage = (total/500) * 100;
        System.out.println("Percentage obtained = " + percentage + "%");
    }
}
