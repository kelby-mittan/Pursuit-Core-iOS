//
//  Game.swift
//  Trivia-Game
//
//  Created by Kelby Mittan on 10/21/19.
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
    
    
    var questionsArr = [Question]()
    var score: Int = 0
    var totalQuestion: Int = 0
    var hasMoreQuestions: Bool {
        return !questionsArr.isEmpty
    }

    
    func getQuestion() -> Question? {

        questionsArr = questionsArr.shuffled()
//        print(questionsArr.popLast()!)

        return questionsArr.popLast()

    }

    func createQuestions(_ type: TriviaType) {

        for dict in Trivia.data {

            if let unwrappedType = dict["triviaType"] as? String {

                if unwrappedType == type.rawValue {

                    if let question = Question(dict: dict) {
                        questionsArr.append(question)
                    }
                }
            }
        }
        totalQuestion = questionsArr.count
        print("\(questionsArr.count) was created")
    }


    func checkAnswer(userAnswer: String, question: Question) {
        if userAnswer == question.correctAnswer {
            score += 1
            print("Correct Answer.\n\(question.fact)")
        } else {
            print("Wrong answer. \n\(question.fact)")
        }
    }

    func finalScore() {
        print("You're final score is \(score) out of \(totalQuestion)")
    }

    func reset() {
        score = 0
        questionsArr.removeAll()
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

