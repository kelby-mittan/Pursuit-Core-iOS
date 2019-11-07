//
//  main.swift
//  Trivia-Game
//
//  Created by Kelby Mittan on 10/21/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation

let newGame = Game()
var keepPlaying = false
let userPrompt = """
Select type of trivia
1. movie trivia
2. music trivia
3. sports trivia
4. nyc trivia
"""
repeat {
    print(userPrompt)
    let userResponse = readLine() ?? ""
    newGame.selectTrivia(userResponse)
    
    repeat {
        guard let question = newGame.getQuestion() else {
            break
        }
        print(question.questionPrompt)
        print(question.choices)
        let userAnswer = readLine() ?? ""
        newGame.checkAnswer(userAnswer: userAnswer, question: question)
        
    } while newGame.hasMoreQuestions
    
    newGame.finalScore()
    
    print("Would you like to play again?")
    let playAgainPrompt = readLine() ?? ""
    if playAgainPrompt.lowercased() == "yes" {
        keepPlaying = true
        newGame.reset()
    } else if playAgainPrompt.lowercased() == "no" {
        keepPlaying = false
    } else {
        print("please enter \"yes\" or \"no\"")
    }
    
    
} while keepPlaying




