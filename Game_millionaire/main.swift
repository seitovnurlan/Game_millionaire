//  main.swift
//  Game_millionaire
//
//  Created by Nurlan Seitov on 25/1/23.
//
import Foundation

var array_history = [String]()
 var question1 = Question(name_question: "Кто был первым военным министром Российской империи?", answer1: "Аракчеев", answer2: "Барклай-де-Толли", answer3: "Вязмитинов", answer4: "Коновницын", right_answer: 3)
var question2 = Question(name_question: "Что Шекспир назвал «вкуснейшим из блюд в земном пиру»?", answer1: "Опьянение", answer2: "Любовь", answer3: "Уединение", answer4: "Сон", right_answer: 4)

var question3 = Question(name_question: "Сколько морей омывают Балканский полуостров?", answer1: "3", answer2: "4", answer3: "5", answer4: "6", right_answer: 4)

print("Привет! Это игра Кто хочет стать миллионером!")
print("Как тебя зовут?")

var name = readLine()!
print("очень приятно, \(name)")
print("И так, первый вопрос на сто сом!")


