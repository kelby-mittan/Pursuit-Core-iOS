import UIKit


// returns void
// internal paramaters name are used in the function body
// external parameter name is used by the caller
// default parameter to be set to 21

//=======================================================================
//                    function review
//=======================================================================
func morningGreeting(_ name: String, _ age: Int = 21) {
    print("Good morning \(name), welcome to iOS 6.3. You are \(age) years old")
}

// call function
morningGreeting("Kelby", 34)

print("Good Friday Morning", terminator: " 🥳")

print()
//=======================================================================
//                      Closures
//=======================================================================

/*
 Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages
 */

/*
 Vocabulary
 
     - algorithm - a process or set of rules to be followed in calculations or other problem
 
     - block - One or more lines of code, enclosed with curly braces. Sometimes used interchangeably with closure, especially in Objective-C.
 
    - closure - An executable block of code. Like a function, it can take input parameters and return a value. A function is actually a special case of a closure. -solving operations, especially by a computer.
 
     - higher-order function - A function that takes a closure as one or more of its arguments and/or returns a closure.
 
     - lambda - A more general computer science term synonymous with closure.
 
     - sort - Reorder a list of data, usually an Array in Swift.
 
 Basic Syntax
    { (parameters) -> return type in
        statements
    }
 */




//=======================================================================
//                      Closure Syntax
//=======================================================================

/*
 { (parameters) -> (return type) in
        statements
 }
 */

// greeting is a closure, does not have parameters
let greeting = {
    print("Welcome to closures")
}

greeting()

// closure that takes parameters and returns a value
let square = { (num: Int) -> (Int) in
    return num * num
}

square(10)

// initialization with type annotation
// refactoring square closure above to make use shorthand closure syntax and shorthand argument names
// $0 is the first parameter, here we ONLY have one parameter, if you have two parameters it would be $0 followed by $1 and so on
let squareShorthandSyntax: (Int) -> (Int) = { $0 * $0 }

print(squareShorthandSyntax(25))

// practice , create add, subtract, multiply and divide
let addingShorthandSyntax: (Int, Int) -> (Int) = { $0 + $1 }

print(addingShorthandSyntax(10, 20))

let subtractingShorthandSyntax: (Int, Int) -> (Int) = { $0 - $1 }

print(subtractingShorthandSyntax(10, 20))

let multiplyShorthandSyntax: (Int, Int) -> (Int) = { $0 * $1 }

print(multiplyShorthandSyntax(10, 20))

let divideShorthandSyntax: (Double, Double) -> (Double) = { $0 / $1 }

print(divideShorthandSyntax(10, 20))


//=======================================================================
//                   Closures as function parameters
// closures are "first class citizens" meaning we can pass closures like we do
// with variables in functions, can also return a closure
//=======================================================================

// the name of the closure could be anything
func helloGreeting(closure: (String) -> ()) {
    closure("Heather")
}

helloGreeting { (name) in
    print("Hello, \(name), it's Friday 🥳")
}

func thisClosure(action: () -> ()) {
    action()
}

let actionClosure = {
    print("inside thisClosure trailing closure")
}

thisClosure(action: actionClosure)

//=======================================================================
//   use some built-in higher order functions (closures)
// - map {....} - transforms a value and returns a value
// - filter {....} - filters values based on a condition and returns an array
// - reduce(0, +) - takes in an initial value, e.g 0 and a closure and combines all the values and returns the result
// - compactMap {....} - returns non-nil values
// - sorted { > } - you provide a sorting closure and it returns the collection sorting accordingly
// - forEach {....} similar to the for-in loop
//=======================================================================

// given an array of intergers, return an array where each value is squared
// e.g input: [1, 2, 3, 4, 5, 6]  output: [1, 4, 9, 16, 25, 36]

let list1 = [1, 2, 3, 4, 5, 6]

func returnSquares(arr: [Int]) -> [Int] {
    var squares = [Int]()
    for num in arr {
        squares.append(num * num)
    }
    return squares
}

print(returnSquares(arr: list1))

// using map
let usingMapResults = list1.map { $0 * $0 }

print(usingMapResults)

// using filter
// given a list or an array of fellows return only fellows where their names begin with "a" case-insensitive

let namesArray = ["George", "Tom", "Ahad", "James", "Ameni"]

let filteredResults = namesArray.filter { $0.lowercased().hasPrefix("a") }
print(filteredResults)

// using reduce
// given an array of intergers return the sum

let list3 = [10, -10, 50, 20]
let reducedResults = list3.reduce(0, +)
print(reducedResults)

// compactMap
// given an optional array of intergers return only valid intergers

let list4 = [nil, 56, 12, -89, nil, nil, 0, 6]
let compactedResults = list4.compactMap { $0 }

