//: Playground - noun: a place where people can play

import UIKit


class Node <T> {
    
    var value: T
    weak var parent: Node? // because not all Nodes have parent
    var children: [Node] = []
    
    init(value: T) {
        self.value = value
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
}

extension Node where T: Equatable { // the extention exsis just to separate the "T equalable" code on a separete block

    func search(value: T) -> Node? {
        if value == self.value {
            return self
        }
        for child in children {
            if let foundNode = child.search(value: value) {
                return foundNode
            }
        }
        return nil
    }
}

extension Node: CustomStringConvertible { //extention made to print it on console
    var description: String {
        var text = "\(value)"
        
        if !children.isEmpty {
            text += " {\(children.map{$0.description}.joined(separator: ", "))} "
        }
        return text
    }
    
}

let beverages = Node(value: "beverages")

let hotBeverages = Node(value: "hot")
let coldBeverages = Node(value: "cold")

beverages.add(child: hotBeverages)
beverages.add(child: coldBeverages)

print(beverages)
