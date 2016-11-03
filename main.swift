//
//  main.swift
//  SimpleCalc
//
//  Created by cmfeng on 10/9/16.
//  Copyright © 2016 cmfeng. All rights reserved.
//

import Foundation
//function for factorial
func factorial(n: Int) -> Int{
    if (n <= 1) {
        return 1
    }
    return (n * factorial(n: n - 1))
}
//read one line input
func input() -> String {
    return readLine(strippingNewline: true)!
}
//convert input string to UNit
func convert(input : String) -> UInt {
    let n = UInt.init(input)!
    return n
}
//print the result with "Result: "
func printOut(result: UInt) {
    print ("Result: \(result)")
}

while true {
    print("Enter an expression seperated by returns:")
    let o1 = input()
    let n1 = convert(input: o1)
    let o2 = input()

    if o2 == "fact" {
        print (factorial(n: Int(n1)))
    } else if o2 == "count" {
        printOut (result: 1)
    } else if o2 == "avg" {
        printOut (result: n1)
    } else {
        let o3 = readLine(strippingNewline: true)!
        if o3 == "count" {
            printOut (result: 2)
        } else if o3 == "avg" {
            var n2 = UInt.init(o2)!
            printOut (result:(n1 + n2) / 2)
        } else {
            let n3 = UInt.init(o3)!
            switch o2{
            case("+"):
                printOut (result:(n1 + n3))
            case("-"):
                printOut (result:(n1 - n3))
            case("*"):
                printOut (result:(n1 * n3))
            case("/"):
                if n3 == 0 {
                    print ("Not supporting diveding by 0")
                } else {
                    printOut (result:(n1 / n3))
                }
                
            case("%"):
                printOut (result: (n1 % n3))
            default:
                var count : UInt = 3
                let n2 = UInt.init(o2)!
                var sum = n1 + n2 + n3
                var input : String = readLine(strippingNewline: true)!
                while ((input != "avg") && (input != "count")) {
                    var inp = UInt.init(input)!
                    count += 1
                    sum += inp
                    input = readLine(strippingNewline: true)!
                }
                if (input == "avg") {
                    printOut (result:(sum / count))
                } else if (input == "count"){
                    printOut (result:count)
                } else {
                    print ("invalid input")
                }
        }
                
}
    
}
}
