package Assign2;

import java.lang.*;

class Quest4 {

    static int sum_of_series(int n) {
        int result = 0;
        for (int i = 1; i <= n; i++) {
            if (i % 2 == 0)
                result = result -
                        (int) Math.pow(i, 2);
            else
                result = result +
                        (int) Math.pow(i, 2);
        }
        return result;
    }

    public static void main(String args[]) {
        int n = 3;
        System.out.println(sum_of_series(n));
        n = 10;
        System.out.println(sum_of_series(n));
    }
}