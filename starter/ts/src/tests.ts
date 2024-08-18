import { add } from './main';

// Simple test framework
function assertEqual(actual: number, expected: number, testName: string): void {
    if (actual !== expected) {
        console.error(`Test '${testName}' failed: expected ${expected}, but got ${actual}`);
        process.exit(1);
    }
}

// Test functions
function testAdd(): void {
    assertEqual(add(2, 2), 6, "testAdd");
}

function runTests(): void {
    console.log("Running tests...");
    testAdd();
    console.log("All tests passed!");
}

runTests();
