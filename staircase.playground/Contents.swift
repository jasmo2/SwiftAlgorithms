//: Playground - noun: a place where people can play

import UIKit

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

func staircase (steps: Int) -> String{
    var piramid = ""
    for step in stride(from: steps, to: 0, by: -1) {
        piramid += String(repeating: " ", count: (step - 1)) + String(repeating: "#", count: (1 + steps - step)) + "\n"
    }
    return piramid
}

print(staircase(steps: 6))
