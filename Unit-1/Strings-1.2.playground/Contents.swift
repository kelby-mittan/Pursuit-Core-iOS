import UIKit


let message = "Goodafternoon!!!!"


//=====================================================================================
//                          Strings contd
//=====================================================================================

print("there are \(message.count) characters in the string")

if message.count % 2 == 0 {
    print("string is even")
} else {
    print("string is odd")
}

switch message {
case message where message.count % 2 == 0:
    for char in message {
        print(char, terminator: " ")
    }
default:
    for (index, char) in message.enumerated() where index % 2 == 1 {
        print(char, terminator: " ")
    }
}

//=====================================================================================
//                          escape characters
//=====================================================================================
// new line example

let message1 = "\nHello\niOS 6.3 \nGreat \nTo have you!"
print(message1)

let tabMessage = "\t Programming is fun"
print(tabMessage)

let quote = "In \"2014\" in quotes"

//=====================================================================================
//                          Using String initialization methods
//=====================================================================================

let char: Character = "a"
let str = String(char)
print(type(of: char))

let currentYear = String(2019)
print("current year is \(currentYear)")

let float: Float = 68.7978798987
let double = 68.97
let result = Double(float)

//print("the result of the calculation is", String(format: "%.2f", result))
print("the result of the calculation above is", String(format: "%.2f", result))


//=====================================================================================
//                         Creating a range on a string
//=====================================================================================

let messageToSelf = "I really love Swift and I'm passionate about coding."

let startIndex = messageToSelf.startIndex

let offsetToSomeCharIndex = messageToSelf.index(startIndex, offsetBy: 18)

let range = startIndex...offsetToSomeCharIndex

let substring = messageToSelf[range]

print("substring is \(substring)")

//=====================================================================================
//                Find or search for the index of a character in a string
//=====================================================================================

let swiftMessage = "I really love Swift ❤️"

let charIndex = swiftMessage.firstIndex(of: "❤️") ?? swiftMessage.startIndex

print("found \"\(swiftMessage[charIndex])\" in swiftMessage String")

//=====================================================================================
//                         prefix and sufix
//=====================================================================================

let name = "alex paul"

if name.hasPrefix("al") {
    print("Hi Al!")
}

let message2 = "questions"
if message2.hasSuffix("ions") {
    print("we have ions")
}

if message2.contains("q") {
    print("contains q")
}

//=====================================================================================
//                         some Character Properties
//=====================================================================================

let character1: Character = "y"

if character1.isLetter {
    print("\(character1) is a letter")
}
// isCurrency
// isPunctuation
// isNumber

//=====================================================================================
//                         string is an Objective -C API
//           API: application programming interface
//=====================================================================================

var coding = "coding"

coding = coding.replacingOccurrences(of: "g", with: "🚀")

print(coding)

let fullName = "Kelby Lee Mittan"
var separatedNames = fullName.components(separatedBy: " ")

print(separatedNames.count)
print(separatedNames)
print(separatedNames[1])
