import UIKit

//========================================================================
//                          Sets
//  Sets: an unordered collection whose elements are unique
//========================================================================


//========================================================================
//               initializing and populating a set
//========================================================================

var accountNumbers: Set<Int> = [] // type annotation
var accountNumbers2 = Set<Int>()  // set initialization
var accountNumbers3: Set<Int> = [24878432746, 43427863247, 43294898742] // literal

//========================================================================
//               accessing valuesmin a set
//========================================================================

if accountNumbers.isEmpty {
    print("accountNumbers is empty")
}

accountNumbers3.count

let colors = Set(["blue", "white", "red", "yellow", "white"])
colors.count
print(colors)

//========================================================================
//               using contains
//========================================================================
let fellows: Set<String> = ["Christian" , "Gregg" , "Maitree" , "Joshua"]

for fellow in fellows {
    print(fellow)
}
if fellows.contains("Christian") {
    print("set contains Christian")
}

//========================================================================
//               performing set operations
//========================================================================

let a: Set<Int> = [1, 2, 3, 4, 5, 6]
var b: Set<Int> = [5, 6, 7, 8]

b.insert(9)

// intersection
let intersection = a.intersection(b).sorted() // ascending
print(intersection)

// symmetric difference
let symmetricDifference = a.symmetricDifference(b)
print(symmetricDifference)

// union
let union = a.union(b)
print(union)

// subtracting
let subtracting = a.subtracting(b).sorted()
print(subtracting)

//var mixedArr: [Any] = [3213, "Tiff", false]
//
//for element in mixedArr {
//    if let num = element as? Int { // typecasting - optional downcasting as?
//        print(num)
//    }
//    if let someString = element as? String {
//        print(someString)
//    }
//    if let someBool = element as? Bool {
//        print(someBool)
//    }
//}


