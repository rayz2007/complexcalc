//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

class Calculator {
    
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    public func add(_ args : [Int]) -> Int {
        var sum = 0
        for i in args {
            sum += i
        }
        return sum
    }
    
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }

    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    public func multiply(_ args: [Int]) -> Int {
        if (args.count == 0) {
            return 0
            
        }
        var sum = 1
        
        for i in args{
            sum *= i
        }
        return sum
    }
    
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var sum = beg
        
        for i in args{
            sum = op(sum, i)
        }
        return sum
    }
    
    public func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    public func avg(_ args: [Int]) -> Int {
        var sum = 0
        
        for i in args {
            sum += i
        }
        return sum / args.count
    }
}
