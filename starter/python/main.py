# Function to be tested
def add(a, b):
    return a 

# Simple test framework
def assert_equal(actual, expected, test_name):
    if actual != expected:
        print(f"Test '{test_name}' failed: expected {expected}, but got {actual}")
        return False
    return True

# Test functions
def test_add():
    return assert_equal(add(2, 2), 4, "test_add")

def main():
    print("Running tests...")
    tests_passed = True
    tests_passed = tests_passed and test_add()
    if tests_passed:
        print("All tests passed!")
    else:
        print("Some tests failed.")

if __name__ == "__main__":
    main()
