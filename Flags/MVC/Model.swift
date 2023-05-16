//
//  Model.swift
//  Flags
//
//  Created by Pavel Krigin on 16.05.2023.
//

import Foundation

struct Country {
    let name: String
    let flagImageName: String
    let correctAnswer: String
    let options: [String]
}

class QuizManager {
    let countries: [Country] = [
        Country(name: "Austria", flagImageName: "flag_of_Austria", correctAnswer: "Austria", options: ["Germany", "Austria", "Italy"]),
        // Другие страны...
    ]
    
    var currentQuestionIndex: Int = 0
    
    func getCurrentQuestion() -> Country {
        return countries[currentQuestionIndex]
    }
    
    func goToNextQuestion() {
        if currentQuestionIndex < countries.count - 1 {
            currentQuestionIndex += 1
        } else {
            // Все вопросы заданы, выполнить необходимые действия
        }
    }
    
    // Другие методы работы с вопросами и ответами...
}
