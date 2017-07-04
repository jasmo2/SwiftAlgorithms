//: Playground - noun: a place where people can play

import UIKit

// n: # of houses
// k: single transmiter range
let nkArr = [5, 1]
let nthSpaceSeparatedArr = [7,2, 4, 6, 5, 9, 12, 11]

func getTransmitters (sortedNthSpaceSeparatedArr: NSOrderedSet, transistorRange: Int, housesNº: Int) -> Int {
    var transmitters = 0
    var prevTransmitter = nil
    for house in sortedNthSpaceSeparatedArr {
        
    }
    
    return transmitters
}

func hackerlandRadioTransmitters (nkArr: [Int], nthSpaceSeparatedArr: [Int]) -> Int {
    
    return getTransmitters(
        sortedNthSpaceSeparatedArr: NSOrderedSet(array: nthSpaceSeparatedArr),
        transistorRange: nkArr[1],
        housesNº: nkArr[0]
    )
    
//    return -1
}

print(hackerlandRadioTransmitters(nkArr: nkArr, nthSpaceSeparatedArr: nthSpaceSeparatedArr))
