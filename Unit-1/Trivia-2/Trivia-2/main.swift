//
//  main.swift
//  Trivia-2
//
//  Created by Kelby Mittan on 10/23/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation

print("""
choose
1. movie trivia
2. music trivia
3. sport trivia
4. nyc trivia
""")
var game = Game()

let userChoice = readLine() ?? ""

game.selectTrivia(userChoice)

repeat {
    guard let question = game.getQuestion() else {
        break
    }
    print(question.questionPrompt)
    print(question.choices)
    let userAnswer = readLine() ?? ""
    game.checkAnswer(userAnswer: userAnswer, question: question)
    
    
} while game.hasQuestions

