//
//  Players.swift
//  Game_millionaire
//
//  Created by Nurlan Seitov on 25/1/23.
//

import Foundation

class Players {
    var name: String
    var number: Int
    var cash: Int
    var answer: [String]
    
    init(name: String, number: Int, cash: Int, answer: [String]) {
        self.name = name
        self.number = number
        self.cash = cash
        self.answer = answer
    }
    func playerInfo() {
        print("Имя: \(name), номер игрока: \(number), заработал: \(cash), его ответы: \(answer)")
    }
}
