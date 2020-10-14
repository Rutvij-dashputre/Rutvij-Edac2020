package Assign1;

public class Quest13 {
    public static void main(String[] args) {

        int n1 = 5;
        int n2 = 10;
        int n3 = 15;
        int max;


        max = (n1 > n2) ?
                (n1 > n3 ? n1 : n3) :
                (n2 > n3 ? n2 : n3);


        System.out.println("Largest number among " + n1 +
                ", " + n2 + " and " + n3 +
                " is " + max + ". ");
    }
}
