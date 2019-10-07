import UIKit

//===========================================================================================
//                                     for in loop
//===========================================================================================

var string = "Hello Playgrounds"

for num in 1...10 {
    // print() default terminator is \n
    // the new line character
    //print(number, terminator: " ") // this puts it on one line
    print(num)
}

//===========================================================================================
//                            preview using loops with arrays
//===========================================================================================

// array of String's
let pursuitStacks = ["iOS" , "web" , "android"]

for pursuitClass in pursuitStacks {
    print("Pursuit class is \(pursuitClass)")
}

let fellows = ["Tiff" , "Joshua" , "Yulia" , "Maitree" ]
for fellow in fellows {
    if fellow == "Joshua" {
        print("\(fellow) is awesome")
    } else {
        print("\(fellow) is awesome too")
    }
//    print("The fellow's name is \(fellow)")
}

let temperatures = [69 , 75 , 87 , 64 , 64 , 61 , 68 ]
for temp in temperatures {
    switch temp {
    case 75...:
        print("\(temp) Catch me at the beach")
    default:
        print("Catch me somewhere else")
    }
}

let message = "Happy Monday iOS 6.3"
for _ in 0..<5 {
    print(message)
}

//===========================================================================================
//                          control transfer statements
//                             where, break, continue
//===========================================================================================

// where

for number in 1...100 where number % 10 == 5 {
    print("\(number) ends in 5")
}

// break - exit loop or end loop

for num1 in 1...10 {
    if num1 == 7 {
        print("Happy birthday, you're \(num1) years old")
        break
    } else {
        print("Not your Birthday, you're only \(num1) years old")
    }
}

// continue -

for num in 1...10 {
    if num % 2 == 0 {
        // increment (add)
        // increment to next value
        print(num)
        continue
    }
}

//===========================================================================================
//                              While loop
//===========================================================================================

var seconds = 30

while seconds >= 0 {
    //print("countdown \(seconds).....")
    // while condition NEEDS a way to stop
    
    if seconds == 0 {
        print("🚀 🚀 🚀 🚀 🚀")
    } else {
        print("countdown \(seconds).....")
    }
    seconds -= 1
}

var myNum = 8
for number in 4..<8{
 if number == 7 {
 break
 } else {
 myNum += number
 }
}
print(myNum)

for _ in 1...10{
 for _ in 1...10{
 print("Nesting!")
 }
}

//===========================================================================================
//                              Repeat While Loop
//===========================================================================================

//var isPlaying = false
//
//var currentLevel = 1
//
//var finalLevel = 10
//
//repeat {
//    if isPlaying {
//        print("Playing level \(currentLevel)")
//
//        if currentLevel == finalLevel {
//            print("I will definitely recommend this game")
//            isPlaying = false
//        }
//        currentLevel += 1
//    }
//        else {
//            print("Trying out Arcade")
//    }
//} while isPlaying == true

var isPlaying = false
var currentLevel = 1
var finalLevel = 10
repeat {
  // code here
  // using String interpolation to show current level
  if isPlaying {
    print("playing level \(currentLevel)")
    if currentLevel == finalLevel {
      print("I will definetely recommend this game.")
      isPlaying = false // stops the game
    }
    currentLevel += 1
  } else {
    // player is seeing our game for the first time
    print("Trying out Pursuit Arcade for the first time.")
    isPlaying = true
  }
} while isPlaying == true

//===========================================================================================
//                              Nested Loops
//===========================================================================================


// multiplication table from 1 to 5
for i in 1...5 {
    for j in 1...5 {
        print("\(i) * \(j) is \(i * j)")
    }
}

//===========================================================================================
//                              Labels in Loops
//===========================================================================================

let product = 50
outerLoop: for i in 1...10 {
    innerLoop: for j in 1...10 {
        if i * j == product {
            print("product was found by multiplying \(i) * \(j)")
//            continue outerLoop
            break outerLoop
        } else {
            print("keep searching.....")
        }
    }
}
