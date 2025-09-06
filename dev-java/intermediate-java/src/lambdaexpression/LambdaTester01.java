package lambdaexpression;

import java.util.function.Supplier;

public class LambdaTester01 {
    public static void main(String[] args) {
        // String msg = sayHello();
        // System.out.println(msg);

        Supplier<String> msg01 = () -> sayHello();
        System.out.println(msg01.get());

    }

    static private String sayHello() {
        return "Hello, World!";
    }
}
