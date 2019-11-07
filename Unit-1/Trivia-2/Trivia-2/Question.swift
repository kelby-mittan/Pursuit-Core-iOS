//
//  Question.swift
//  Trivia-2
//
//  Created by Kelby Mittan on 10/23/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation

class Question {
    var questionPrompt: String
    var correctAnswer: String
    var choices: String
    var fact: String
    var triviaType: TriviaType
    
    init(questionPrompt: String,
         correctAnswer: String,
         choices: String,
         fact: String,
         triviaType: TriviaType) {
        self.questionPrompt = questionPrompt
        self.correctAnswer = correctAnswer
        self.choices = choices
        self.fact = fact
        self.triviaType = triviaType
    }
    
    convenience init?(dict: [String:Any]) {
        guard let questionPrompt = dict["question"] as? String,
        let correctAnswer = dict["correctAnswer"] as? String,
        let choices = dict["choices"] as? String,
        let fact = dict["fact"] as? String,
        let triviaType = dict["triviaType"] as? String else {
            return nil
        }
        
        self.init(questionPrompt: questionPrompt,
                  correctAnswer: correctAnswer,
                  choices: choices,
                  fact: fact,
                  triviaType: TriviaType(rawValue: triviaType) ?? TriviaType.nycTrivia)
    }
    
    
    
}
