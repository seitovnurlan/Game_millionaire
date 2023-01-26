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

var question5 = Question(name_question: "Как стал называть себя Питер Паркер после обретения сверхспособностей?", answer1: "A: Человек-паук", answer2: "B: Человек-барсук", answer3: "С: Человек-бамбук", answer4: "D: Человек-бурундук", right_answer: "A")

var question6 = Question(name_question: "С помощью чего исследуют работу сердца?", answer1: "A: МФЦ", answer2: "B: ЕГЭ", answer3: "С: ЭКГ", answer4: "D: ЧГК", right_answer: "C")

var question7 = Question(name_question: "Какой клуб, принадлежащий Роману Абрамовичу, выиграл Лигу чемпионов по футболу в 2021 году?", answer1: "A: \"Манчестер Юнайтед\"", answer2: "B: \"Челси\"", answer3: "С: \"Бавария\"", answer4: "D: \"Спартак\"", right_answer: "B")

var question8 = Question(name_question: "У какого из этих медведей кость запастья развилась так, что стала похожа на большой палец человека?", answer1: "A: белый медведь", answer2: "B: бурый медведь", answer3: "С: пещерный медведь", answer4: "D: панда", right_answer: "D")

var question9 = Question(name_question: "Какую королеву в детстве называли Лилибет?", answer1: "A: Беатрикс", answer2: "B: Викторию", answer3: "С: Елизаветту II", answer4: "D: Маргариту де Валуа", right_answer: "C")

var question10 = Question(name_question: "Сколько простых чисел в диапазоне с 1 до 10?", answer1: "A: три", answer2: "B: четыре", answer3: "С: пять", answer4: "D: шесть", right_answer: "B")

var question11 = Question(name_question: "Где работает провизор?", answer1: "A: в аптеке", answer2: "B: на пожарной станции", answer3: "С: на кладбище", answer4: "D: в бассейне", right_answer: "A")

var question12 = Question(name_question: "В каком виде спорта, как утверждают учёные, левши имеют преимущество?", answer1: "A: прыжки с шестом", answer2: "B: плавание", answer3: "С: бейсбол", answer4: "D: гребля", right_answer: "C")

var question13 = Question(name_question: "Какая нимфа на свою беду искупалась в водоёме, отправленном богиней Цирцеей?", answer1: "A: Сцилла", answer2: "B: Эхо", answer3: "С: Калипсо", answer4: "D: Дафна", right_answer: "A")


var array_Questions: [Question] = [question1,question2,question3, question4, question5,question6,question7, question8, question9, question10, question11,question12,question13, question14,question15]

var array_bids: [Int] = [500, 1000, 2000, 3000, 5000, 10000, 15000, 25000, 50000, 100000, 200000, 400000, 800000, 1500000, 3000000]

var playersHistory = [Players] ()
// Создаю массив историй для сохранения результатов.

func game() {
    var j: Int = 0
    var money = 0
    print("Здравствуйте! Игра Кто хочет стать миллионером!")
    print("Не сгораемая сумма это 100 000 сом, 10-й вопрос, давайте сыграем")
    print("Как Вас зовут?")
    
    var name = readLine()!
    
    // Добавим массив истории ответов игрока.
    var answersHistory: [String] = []
    
    print("Очень приятно, \(name)")
    
    for i in array_Questions
    {
        j += 1
        print(" И так, \(j) вопрос на \(array_bids[j-1]) сом!")
        print(" Для ответа нажмите буквы: A,B,C или D")
        print("\(i.name_question)\n \(i.answer1)\n \(i.answer2)\n \(i.answer3)\n \(i.answer4)")
        
        var answ = readLine()!
        
        //В массив ответов игрока добавляем ответ
        answersHistory.append(answ)
        
        if answ == i.right_answer || answ.uppercased() == i.right_answer {
            print(" \(i.right_answer) это правильный ответ")
            money = array_bids[j-1]
        }
        else
        {
            print("Ответ не правильный!")
            print("Игра окончена!")
            if money < 100000 {
                money = 0
            }
            if money < 3000000 && money > 100000 {
                money = 100000
            }
            print("Вы заработали \(money) сом.")
            //Если игра окончена, создаем игрока, его номер: количество элементов в массиве
            // истории плюс один.
            let player = Players(name: name, number: playersHistory.count + 1, cash: money, answer: answersHistory)
            //Добавляем его в историю игроков
            playersHistory.append(player)
            
            print("Информация о всех наших игроках:")
            for player in playersHistory {
                player.playerInfo()
            }
            //обчищаем массив истории ответоа игрока
            answersHistory = []
            break
        }
    }
    if money == 3000000 {
        print("Игра окончена!")
        print("Вы заработали \(money) сом.")
        let player = Players(name: name, number: playersHistory.count + 1, cash: money, answer: answersHistory)
        //Добавляем его в историю игроков
        playersHistory.append(player)
        
        print("Информация о всех наших игроках:")
        for player in playersHistory {
            player.playerInfo()
        }
        //обчищаем массив истории ответоа игрока
        answersHistory = []
    }
    //Доп. код, чтоб возобновлять имитацию игры для другого игрока
    print("Начать игру с другим игроком?")
    let answer = readLine()!
    answer == "Да" || answer == "da" ? game() : ()
}
//Вызов метода
game()


