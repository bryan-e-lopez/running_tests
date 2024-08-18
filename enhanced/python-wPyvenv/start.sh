#!/bin/bash
# Tiny script to initialize your python setup if downloading for the firs time. 

set -e 

# Check for Python version
echo "-> Checking version of Python..."
if command -v python3 &>/dev/null; then
    PYTHON_CMD="python3"
elif command -v python &>/dev/null; then
    PYTHON_CMD="python"
else
    echo "-> Python is not installed. Please install Python to proceed."
    exit 1
fi

# Create a virtual environment using the appropriate Python command
echo "-> Checking setting up virtual environment"
$PYTHON_CMD -m venv .virtualenv

# Activate the virtual environment
echo "-> Activating virtual environment"
source .virtualenv/bin/activate

# Install dependencies
echo "-> Installing packages"
pip install -r requirements.txt

echo "Set up Python environment, now debug the unit test!"
