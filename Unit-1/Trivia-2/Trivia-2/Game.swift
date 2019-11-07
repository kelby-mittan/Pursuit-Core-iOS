//
//  Game.swift
//  Trivia-2
//
//  Created by Kelby Mittan on 10/23/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation

//TODO:create 3 properties
// 1. a questions array property
// 2. a score property
// 3. a total questions property
// methods
// TODO: write the following methods
// 1. write a method to get a shuffled question
//    remove the question from the questions array above
// 2. write a method to start the game, this method creates the array of questions
// 3. write a method to check if the answer is correct and increment the score

class Game {
    var questions = [Question]()
    var score = 0
    var totalQuestions = 0
    var hasQuestions: Bool {
        return !questions.isEmpty
    }
    
    func getQuestion() -> Question? {
        questions = questions.shuffled()
        return questions.popLast()
    }
    
    
    func createQuestions(_ type: TriviaType) {
        
        for dict in Trivia.data {
            
            if let unwrapType = dict["triviaType"] as? String {
                
                if unwrapType == type.rawValue {
                    
                    if let question = Question(dict: dict) {
                        questions.append(question)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    func checkAnswer(userAnswer: String, question: Question) {
        if userAnswer == question.correctAnswer {
            print("correct")
            score += 1
        } else {
            print("WRONG")
        }
    }
    
    func selectTrivia(_ response: String) {
        switch response {
        case "1":
            createQuestions(.movieTrivia)
        case "2":
            createQuestions(.musicTrivia)
        case "3":
            createQuestions(.sportsTrivia)
        case "4":
            createQuestions(.nycTrivia)
        default:
            print("Trivia Type is Unavailable")
        }
    
    }

}
