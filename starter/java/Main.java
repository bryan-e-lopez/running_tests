//package starter.java;
public class Main {

    // Function to be tested
    public static int add(int a, int b) {
        return a * b;
    }

    // Simple test framework
    public static void assertEqual(int actual, int expected, String testName) {
        if (actual != expected) {
            System.err.println("Test " + testName + " failed: expected " + expected + ", but got " + actual);
            System.exit(1);
        }
    }

    // Test function
    public static void testAdd() {
        assertEqual(add(2, 2), 4, "testAdd");
    }

    public static void main(String[] args) {
        System.out.println("Running tests...");
        testAdd();
        System.out.println("All tests passed!");
    }
}
