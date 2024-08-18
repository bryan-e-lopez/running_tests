#!/bin/bash
# Tiny script to compile and run the rust code 

set -e 
# Directory containing the Rust project (relative to the script's location)
PROJECT_DIR="$(dirname "$0")"

# Check if Rust is installed
if ! command -v cargo &>/dev/null; then
    echo "-> Rust is not installed. Please install Rust to proceed."
    exit 1
fi

echo "-> Rust is installed. Proceeding with the build and test process."

# Change to the project directory
cd "$PROJECT_DIR" || { echo "-> Directory $PROJECT_DIR does not exist."; exit 1; }

# Compile the Rust code
echo "-> Compiling the Rust project..."
cargo build

# Check if the build succeeded
if [ $? -ne 0 ]; then
    echo "-> Build failed."
    exit 1
fi

# Run the compiled program
echo "-> Running the program..."
cargo run

# Run the tests
echo "-> Running tests..."
cargo test

# Check for errors
if [ $? -ne 0 ]; then
    echo "-> An error occurred during the run or test process."
    exit 1
else
    echo "-> Build, run, and test process completed successfully."
fi

echo ""