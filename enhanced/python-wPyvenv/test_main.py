import pytest
from main import main

def test_main():
    assert main(5, 3) == 9
    assert main(-1, 1) == 2
    assert main(100, 200) == 300

if __name__ == "__main__":
    pytest.main()
