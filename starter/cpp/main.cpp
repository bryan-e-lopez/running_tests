#include <iostream>

// Function to be tested
int add(int a, int b) {
    return a + b;
}

// Simple test framework
#define ASSERT_EQUAL(x, y) do { \
    if ((x) != (y)) { \
        std::cerr << "Assertion failed: " #x " == " #y ", file " __FILE__ ", line " << __LINE__ << std::endl; \
        return 1; \
    } \
} while (0)

// Test function
int test_add() {
    ASSERT_EQUAL(add(2, 3), 4);
    return 0; // Return 0 to indicate success
}

int main() {
    std::cout << "Running tests..." << std::endl;
    if (test_add() == 0) {
        std::cout << "All tests passed!" << std::endl;
    } else {
        std::cout << "Some tests failed." << std::endl;
    }
    return 0;
}
