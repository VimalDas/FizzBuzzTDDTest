//
//  FizzBuzzGenerator.swift
//  FizzBuzzTDDTest
//
//  Created by Vimal Das on 22/10/23.
//

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
