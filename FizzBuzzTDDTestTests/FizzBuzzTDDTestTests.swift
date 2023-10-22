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

struct FizzBuzzGenerator {
    static func generate(from input: Int) -> String {
        guard input != 0 else { return "" }
        
        switch (input.isMultiple(of: 3), input.isMultiple(of: 5)) {
        case (true, true): return "FizzBuzz"
        case (true, _): return "Fizz"
        case (_, true): return "Buzz"
        default: return String(input)
        }
    }
}

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
    }
    
    func test_returnBuzzForNumbersDivisibleByFive() {
        expect(input: 5, toGive: "Buzz")
    }
    
    func test_returnFizzBuzzForNumbersDivisibleByBothThreeAndFive() {
        expect(input: 15, toGive: "FizzBuzz")
    }
    
    // MARK: - Helpers
    func expect(input: Int, toGive result: String, file: StaticString = #filePath, line: UInt = #line) {
        let output = FizzBuzzGenerator.generate(from: input)
        print(output)
        XCTAssertEqual(output, result, "Expected to get \(result), got \(output) instead.", file: file, line: line)
    }
}

