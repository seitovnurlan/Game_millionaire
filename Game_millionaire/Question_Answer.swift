//
//  Question_Answer.swift
//  Game_millionaire
//
//  Created by Nurlan Seitov on 25/1/23.
//

import Foundation

class Question {
    var name_question: String
    var answer1: String
    var answer2: String
    var answer3: String
    var answer4: String
    var right_answer:Int
    
    init(name_question: String, answer1: String, answer2: String, answer3: String, answer4: String, right_answer: Int) {
        self.name_question = name_question
        self.answer1 = answer1
        self.answer2 = answer2
        self.answer3 = answer3
        self.answer4 = answer4
        self.right_answer = right_answer
    }
    func showQuestion() {
        print("\(name_question)/n \(answer1)/n \(answer2)/n \(answer3)/n \(answer4)")
    }
}
