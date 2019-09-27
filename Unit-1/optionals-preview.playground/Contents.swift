import UIKit

// Optional - used to indicate that a value may exist
//            two possible outcomes
//            outcome 1: there is a value and it can be used normal
//            outcome 2: there isn't a value, in Swift terms it's nil
/*
 String?
 Bool?
 Int?
 Double?
 Character?
 */

/*
 Ways to wrap an Optional:
 - forced unwrapping e.g Int(response)!
 - nil-coelescing e.g Int(response) ??.21
 - optional binding e.g if bindingValue = optionalValue {...we can use binding value here...} else {....}
 - implicit unwrapping e.g var name: String!
 */

let response =  "27"

//var age = Int(response)! - forced unwrapping

var age = Int(response) ?? 21 // nil coelescing

age + 10

if let yourAge = Int(response) {
    print("the age you entered is \(yourAge)")
} else {
    print("your response value is nil")
}

