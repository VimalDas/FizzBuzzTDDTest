//
//  FizzBuzzTDDTestTests.swift
//  FizzBuzzTDDTestTests
//
//  Created by Vimal Das on 22/10/23.
//

import XCTest
@testable import FizzBuzzTDDTest

/*
 Test is called fizzbuzz
 1. print all numbers
 2. for every number divisible by 3 - you print fizz
 3. for every number divisible by 5 - you print buzz
 4. for every number divisible by 3 & 5 - you print fizzbuzz
 
 we will use TDD (Test Driven Development) to write the code
 */
// for better test coverage, you should add more inputs per test case


// Thats it!!

class FizzBuzzTDDTestTests: XCTestCase {
    func test_returnTheNumbers() {
        expect(input: 1, toGive: "1")
        expect(input: 2, toGive: "2")
        expect(input: 11, toGive: "11")
        expect(input: 4, toGive: "4")
        expect(input: 7, toGive: "7")
        expect(input: 13, toGive: "13")
    }

    func test_whenZeroInput_returnsEmpty() {
        expect(input: 0, toGive: "")
    }
    
    func test_returnFizzForNumbersDivisibleByThree() {
        expect(input: 3, toGive: "Fizz")
        expect(input: 6, toGive: "Fizz")
        expect(input: 9, toGive: "Fizz")
        expect(input: 12, toGive: "Fizz")
        expect(input: 33, toGive: "Fizz")
        expect(input: 66, toGive: "Fizz")
        expect(input: 99, toGive: "Fizz")
    }
    
    func test_returnBuzzForNumbersDivisibleByFive() {
        expect(input: 5, toGive: "Buzz")
        expect(input: 10, toGive: "Buzz")
        expect(input: 20, toGive: "Buzz")
        expect(input: 25, toGive: "Buzz")
        expect(input: 35, toGive: "Buzz")
        expect(input: 40, toGive: "Buzz")
        expect(input: 100, toGive: "Buzz")
    }
    
    func test_returnFizzBuzzForNumbersDivisibleByBothThreeAndFive() {
        expect(input: 15, toGive: "FizzBuzz")
        expect(input: 45, toGive: "FizzBuzz")
        expect(input: 30, toGive: "FizzBuzz")
        expect(input: 60, toGive: "FizzBuzz")
        expect(input: 75, toGive: "FizzBuzz")
        expect(input: 90, toGive: "FizzBuzz")
    }
    
    // MARK: - Helpers
    func expect(input: Int, toGive result: String, file: StaticString = #filePath, line: UInt = #line) {
        let output = FizzBuzzGenerator.generate(from: input)
        print(output)
        XCTAssertEqual(output, result, "Expected to get \(result), got \(output) instead.", file: file, line: line)
    }
}

