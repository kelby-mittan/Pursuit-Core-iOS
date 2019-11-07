//
//  Question.swift
//  Trivia-Game
//
//  Created by Kelby Mittan on 10/21/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation


struct Question {
    var questionPrompt: String
    var correctAnswer: String
    var choices: String
    var fact: String
    var triviaType: TriviaType
    
    init(questionPrompt: String, correctAnswer: String, choices: String, fact: String, triviaType: TriviaType) {
        self.questionPrompt = questionPrompt
        self.correctAnswer = correctAnswer
        self.choices = choices
        self.fact = fact
        self.triviaType = triviaType
    }
    
    init?(dict: [String:Any]) {
        guard let questionPrompt = dict["question"] as? String,
            let correctAnswer = dict["correctAnswer"] as? String,
            let choices = dict["choices"] as? String,
            let fact = dict["fact"] as? String,
            let triviaType = dict["triviaType"] as? String else {
                return nil
        }
        // 2. get a valid TriviaType from the enum to add to the designated initializer
        self.init(questionPrompt: questionPrompt,
                  correctAnswer: correctAnswer,
                  choices: choices,
                  fact: fact,
                  triviaType: TriviaType(rawValue: triviaType) ?? TriviaType.nycTrivia)
        }
    
}

