import UIKit

//===========================================================================================
//                              Strings
//===========================================================================================

// string - collection of unicode compliant characters

/*
 Vocabulary
 - unicode
 - character
 - literal string e.g "hello
 */

var message = "Good Morning iOS 6.3"

// iterate over the string using a for-in loop
for char in message {
print("character is \(char)")
}

print("message count is \(message.count)")

"melinda".count

//===========================================================================================
//                              unicode
//        e.g a space in unicode U+0020
//===========================================================================================

// a character is made up of one or more unicode scalars

let name = "al\u{0065}\u{301}x"  // e.g example of a unicode scaler \u{301}

let climber = "\u{1F9D7}"

let unicodeLowercaseE = "\u{0065}"
let eCharacter = "e"
if unicodeLowercaseE == eCharacter {
    print("they are equal")
}

let programmingLanguage = "Swift"

let fellows = ["Kelby", "Stephanie"]

fellows.count

let firstFellow = fellows[0]

// access the first character

let firstIndex = programmingLanguage.startIndex

let firstCharacter = programmingLanguage[firstIndex]

print("first charcater in \(programmingLanguage) is \(firstCharacter)")

let endIndex = programmingLanguage.endIndex

let lastCharacterIndex = programmingLanguage.index(before: endIndex)

let lastCharacter = programmingLanguage[lastCharacterIndex]

print("last charcater in \(programmingLanguage) is \(lastCharacter)")


//===========================================================================================
//                              making a range using indices
//===========================================================================================

let alphabets = "abcdefghijklmnopqrstuvwxyz"

for (index, character) in alphabets.enumerated() {
    if index < 11 {
        print("\(character) at index \(index)")
    } else { break }
}

//===========================================================================================
//                                 multi-line Strings
//===========================================================================================


let multilineString = """
                    Hello
                    Hello
                        Hello
                        Hello
            Hello
            Hello
                    Hello
                    Hello
"""
 print(multilineString)


//==============================================
// LAB


//for i in 1...10 {
//    print(String(i), terminator: " ")
//}

//for i in 5...51 {
//    if i % 2 == 0{
//    print(String(i), terminator: " ")
//    }
//}

//for i in 1...60 {
//    if i % 10 == 4{
//    print(String(i), terminator: " ")
//    }
//}
//
//for char in "Hello World!" {
//print("\(char)")
//}

//let endIndex = programmingLanguage.endIndex
//
//let lastCharacterIndex = programmingLanguage.index(before: endIndex)
//
//let lastCharacter = programmingLanguage[lastCharacterIndex]
//
//print("last charcater in \(programmingLanguage) is \(lastCharacter)")

//let myStringSeven = "Hello world!"
//
//let endStringSeven = myStringSeven.endIndex
//
//let lastCharacterInSeven = myStringSeven.index(before: endStringSeven)
//
//let lastCharacterIs = myStringSeven[lastCharacterInSeven]
//
//print("last charcater in \(myStringSeven) is \(lastCharacterIs)")

//## Question 6
//
//Write code that switches on a string, given the following conditions:
//- If the string's length is even, print out every character.
//- If the string's length is odd, print out every other character.

let myNameIs = "My name is Kelby Mittan!!"

let numOfChars = myNameIs.count
let evenChars = numOfChars % 2

var letter = 0

switch evenChars {
case 0:
    for char in myNameIs{
    print("\(char)")
    }
default:
    for (index, char) in myNameIs.enumerated() {
        if index % 2 == 0 {
            print(char, terminator: "")
        }
    }
}

//## Question 7
//
//Initialize a String with a character. Show that it is a Character, and not another String, that you're using to initialize it.

//let inialString = "Character initialization"
//
//let firstCharacterInString = inialString.startIndex
//
//let charOne = inialString[firstCharacterInString]

//let initializingChar: Character = "C"
//let string = "\(initializingChar)haracter initialization"


//Question 12
//Print the below flower box using the following information.
//
//The unicode number for ⚘ is U-2698
//The top and bottom of the box are represented by dashes and the rows are |
//Use the terminator argument in your print statements to print on the same line.
//Hint: It may be useful to try printing out a box of just one character to start then work your way from there.
//Flower Box:
//- - - - - - - - - - -
//| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//- - - - - - - - - - -
var flower = "| \u{2698} "

for _ in  1...11 {
    print("- ", terminator: "")
}
for _ in 1...7 {
    print("|")
    for _ in 1...5 {
        print(flower, terminator: "")
    }
}
print()
for _ in  1...11 {
    print("- ", terminator: "")
}


//var N = 4
//
//for _ in 1...N {
//    for _ in 1...N {
//        print("*", terminator: "")
//    }
//    print("")
//}
//for i in 1...10 {
//    print(String(i), terminator: " ")
//}

// Using only Unicode, print out "HELLO WORLD!"
print()

let helloWorld = "\u{0048}\u{0045}\u{004C}\u{004C}\u{004F}\u{0020}\u{0057}\u{004F}\u{0052}\u{004C}\u{0044}\u{0021}"
print(helloWorld)

// question 13
//Write a program that sets up a chess board using Unicode.

//Chess Board:
//♖ ♘ ♗ ♕ ♔ ♗ ♘ ♖
//♙ ♙ ♙ ♙ ♙ ♙ ♙ ♙
//
//
//
//
//♟ ♟ ♟ ♟ ♟ ♟ ♟ ♟
//♜ ♞ ♝ ♛ ♚ ♝ ♞ ♜

//let wKing = "\u{2654}" ; let bKing = "\u{265A}"
//let wQueen = "\u{2655}" ; let bQueen = "\u{265B}"
//let wRook = "\u{2656}" ; let bRook = "\u{265C}"
//let wBishop = "\u{2657}" ; let bBishop = "\u{265D}"
//let wKnight = "\u{2658}" ; let bKnight = "\u{265E}"
//let wPawn = "\u{2659}" ; let bPawn = "\u{265F}"

let wKing = "\u{2654}" ; let bKing = "\u{265A}"
let wQueen = "\u{2655}" ; let bQueen = "\u{265B}"
let wRook = "\u{2656}" ; let bRook = "\u{265C}"
let wBishop = "\u{2657}" ; let bBishop = "\u{265D}"
let wKnight = "\u{2658}" ; let bKnight = "\u{265E}"
let wPawn = "\u{2659}" ; let bPawn = "\u{265F}"

print(wRook + wKnight + wBishop + wKing + wQueen + wBishop + wKnight + wRook)
for _ in 1...8 {
    print(wPawn, terminator: "")
}
print()
for _ in 1...4 {
    print()
}
for _ in 1...8 {
    print(bPawn, terminator: "")
}
print()
print(bRook + bKnight + bBishop + bKing + bQueen + bBishop + bKnight + bRook)
//♖ ♘ ♗ ♕ ♔ ♗ ♘ ♖
//♙ ♙ ♙ ♙ ♙ ♙ ♙ ♙
//
//
//
//
//♟ ♟ ♟ ♟ ♟ ♟ ♟ ♟
//♜ ♞ ♝ ♛ ♚ ♝ ♞ ♜

//## Question 14
//
//You are given a string stored in the variable `aString`. Create new string named `replacedString` that contains the characters of the original string with all the occurrences of the character `"e"` replaced by `"\*"`.
//
//```swift
//var aString = "Replace the letter e with \*"
//// Your code here
// ```

var aString = "Replace the letter e with *"
var replacedString = aString.replacingOccurrences(of: "e", with: "*")

print(replacedString)

//var coding = "coding"
//
//coding = coding.replacingOccurrences(of: "g", with: "🚀")
//
//print(coding)

//## Question 15
//
//You are given a string stored in variable `aString`. Create a new string called `reverse` that contains the original string in reverse order. Print the reversed string.
//
//```swift
var aString2 = "this string has 29 characters"

var reverse = String(aString2.reversed())

print(reverse)

//
//// Your code here
//```

//## 16. Mad-Libs! Add a value to the declared variables below in playgrounds. Insert the variables (already in correct order) inside the stringmadLib and print.
//
//```swift


var geographicLocation: String = "New York"
var adjective1: String = "cold"
var pluralNoun1: String = "air"
var adjective2: String = "high"
var pluralNoun2: String = "rain"
var number1: Int = 100
var number2: Int = 55
var articleOfClothing: String = "rain coat"

var madLib = "Here is tomorrow's weather report for \(geographicLocation) and vicinity. Early tomorrow, a \(adjective1) front will collide with a mass of hot \(pluralNoun1) moving from the north. This means we can expect \(adjective2) winds and occasional \(pluralNoun2) by late afternoon. Wind velocity will be \(number1) miles an hour, and the high temperature should be around \(number2) degrees. So, if you're going out, you had better plan on wearing your \(articleOfClothing)"

print(madLib)
