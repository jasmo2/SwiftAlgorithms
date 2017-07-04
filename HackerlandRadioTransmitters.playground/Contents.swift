//: Playground - noun: a place where people can play

import UIKit

// n: # of houses
// k: single transmiter range
let nkArr = [5, 1]
let nthSpaceSeparatedArr = [7, 2, 4, 6, 5, 9, 12, 11]

func getTransmitters (dicHouses: [Int: Int], transistorRange: Int, initialHouse: Int, lastValue: Int) -> Int {
    for house in initialHouse...lastValue {
        if let houseNº = dicHouses[house+transistorRange] {
            //            let result = getTransmitters(dicHouses: dicHouses, transistorRange: transistorRange, initialHouse: houseNº, lastValue: lastValue)
//            if result == 0 {
//                return result
//            }
        } else {
            
        }
    }
    
    return dicHouses.keys.reduce(0, { result, index in dicHouses[index] as! Int + result } )
}
func hackerlandRadioTransmitters (nkArr: [Int], nthSpaceSeparatedArr: [Int]) -> Int {
    let transistorRange = nkArr[1]
    var result = 0
    var dicHouses = [Int: Int]()
    let sortedNthSpaceSeparatedArr = nthSpaceSeparatedArr.sorted(by: {(n1:Int, n2:Int) -> Bool in return n1 < n2})
    for houseNº in sortedNthSpaceSeparatedArr {
        if let house = dicHouses[houseNº] {} else { dicHouses[houseNº] = 0 }
    }
    
    
    return getTransmitters(
        dicHouses: dicHouses,
        transistorRange: transistorRange,
        initialHouse: sortedNthSpaceSeparatedArr.first as! Int,
        lastValue: sortedNthSpaceSeparatedArr.last as! Int
    )
}

print(hackerlandRadioTransmitters(nkArr: nkArr, nthSpaceSeparatedArr: nthSpaceSeparatedArr))
