// src/__tests__/main.test.ts

import { add } from '../main';

describe('add function', () => {
  test('adds two positive numbers', () => {
    expect(add(5, 3)).toBe(9);
  });

  test('adds two negative numbers', () => {
    expect(add(-1, -1)).toBe(0);
  });

  test('adds a positive and a negative number', () => {
    expect(add(-1, 1)).toBe(0);
  });
});
