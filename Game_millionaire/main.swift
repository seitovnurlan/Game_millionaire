//  main.swift
//  Game_millionaire
//
//  Created by Nurlan Seitov on 25/1/23.
//
import Foundation

var question15 = Question(name_question: "Что Шекспир назвал «вкуснейшим из блюд в земном пиру»?", answer1: "A: Опьянение", answer2: "B: Любовь", answer3: "C: Уединение", answer4: "D: Сон", right_answer: "D")
//
var question14 = Question(name_question: "Сколько морей омывают Балканский полуостров?", answer1: "A: 3", answer2: "B: 4", answer3: "C: 5", answer4: "D: 6", right_answer: "D")

var question1 = Question(name_question: "В каких сетях соверменные люди проводят очень много времени?", answer1: "A: рыболовных", answer2: "B: водопроводных", answer3: "C: социальных", answer4: "D: паучьих", right_answer: "C")

var question2 = Question(name_question: "Какое имя придумал Кот в сапогах для своего хозяина?", answer1: "A: маркиз де Карабас", answer2: "B: Карабас-Барабас", answer3: "C: Бармалей", answer4: "D: Бармаглот", right_answer: "A")

var question3 = Question(name_question: "Как в 90-х годах стали называть рутинно повторяющиеся события?", answer1: "A: день сурка", answer2: "B: неделя тушканчика", answer3: "C: месяц суслика", answer4: "D: год диплодока", right_answer: "A")

var question4 = Question(name_question: "Как называется приём в искусстве, основанный на совмещении разнородных материалов?", answer1: "A: форсаж", answer2: "B: коллаж", answer3: "C: грильяж", answer4: "D: фиксаж", right_answer: "B")

var question5 = Question(name_question: "С помощью чего исследуют работу сердца?", answer1: "A: МФЦ", answer2: "B: ЕГЭ", answer3: "С: ЭКГ", answer4: "D: ЧГК", right_answer: "C")

var question6 = Question(name_question: "С помощью чего исследуют работу сердца?", answer1: "A: МФЦ", answer2: "B: ЕГЭ", answer3: "С: ЭКГ", answer4: "D: ЧГК", right_answer: "C")

var question7 = Question(name_question: "Какой клуб, принадлежащий Роману Абрамовичу, выиграл Лигу чемпионов по футболу в 2021 году?", answer1: "A: \"Манчестер Юнайтед\"", answer2: "B: \"Челси\"", answer3: "С: \"Бавария\"", answer4: "D: \"Спартак\"", right_answer: "B")

var question8 = Question(name_question: "У какого из этих медведей кость запастья развилась так, что стала похожа на большой палец человека?", answer1: "A: белый медведь", answer2: "B: бурый медведь", answer3: "С: пещерный медведь", answer4: "D: панда", right_answer: "D")

var question9 = Question(name_question: "Какую королеву в детстве называли Лилибет?", answer1: "A: Беатрикс", answer2: "B: Викторию", answer3: "С: Елизаветту II", answer4: "D: Маргариту де Валуа", right_answer: "C")

var question10 = Question(name_question: "Сколько простых чисел в диапазоне с 1 до 10?", answer1: "A: три", answer2: "B: четыре", answer3: "С: пять", answer4: "D: шесть", right_answer: "D")

var question11 = Question(name_question: "Сколько простых чисел в диапазоне с 1 до 10?", answer1: "A: три", answer2: "B: четыре", answer3: "С: пять", answer4: "D: шесть", right_answer: "B")

var question12 = Question(name_question: "В каком виде спорта, как утверждают учёные, левши имеют преимущество?", answer1: "A: прыжки с шестом", answer2: "B: плавание", answer3: "С: бейсбол", answer4: "D: гребля", right_answer: "C")

var question13 = Question(name_question: "Какая нимфа на свою беду искупалась в водоёеме, отправленном богиней Цирцеей?", answer1: "A: Сцилла", answer2: "B: Эхо", answer3: "С: Калипсо", answer4: "D: Дафна", right_answer: "A")


var array_Questions: [Question] = [question1,question2,question3, question4, question5,question6,question7, question8, question9, question10, question11,question12,question13, question14,question15]
var array_bids: [Int] = [500, 1000, 2000, 3000, 5000, 10000, 15000, 25000, 50000, 100000, 200000, 400000, 800000, 1500000, 3000000]
var array_history = [Players] ()
var j: Int = 0
var money = 0
var object1 = [Players] ()
print("Здравствуйте! Игра Кто хочет стать миллионером!")
print("Как Вас зовут?")

var name = readLine()!
print("Очень приятно, \(name)")

for i in array_Questions
{
    j += 1
    print("И так, \(j) вопрос на \(array_bids[j-1]) сом!")
    print("Для ответа нажмите буквы: A,B,C или D")
    print("\(i.name_question)\n \(i.answer1)\n \(i.answer2)\n \(i.answer3)\n \(i.answer4)")
    
    var answ = readLine()!
    
    if answ == i.right_answer || answ.uppercased() == i.right_answer {
        print(" \(i.right_answer) Это правильный ответ")
        money += array_bids[j-1]
        
//        for k in array_history {
//            k.name = name
//            k.number = j-1
//            k.cash = money
//        //    k.answer = answ
//            Players.addPlayers("")
//            }
    }
    else
    {
        print("Ответ не правильный!")
        print("Игра окончена!")
        if money < 200000 {
            money = 0
        }
        break
    }
    
}
print("На вашем счете: \(money) сом")


