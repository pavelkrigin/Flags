//
//  ViewController.swift
//  Flags
//
//  Created by Pavel Krigin on 13.05.2023.
//

import UIKit

class ViewController: UIViewController {

//    var view = UILabel()
//    view.frame = CGRect(x: 0, y: 0, width: 375, height: 812)
//    view.backgroundColor = .white
//
//    view.layer.backgroundColor = UIColor(red: 0.983, green: 0.983, blue: 0.983, alpha: 1).cgColor
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var questionLabel: UILabel!
//    @IBOutlet weak var answer1Button: UIButton!
//    @IBOutlet weak var answer2Button: UIButton!
//    @IBOutlet weak var answer3Button: UIButton!
//
//    var questions: [String] = ["Какой год был основан Apple?", "Как называется операционная система Apple для мобильных устройств?", "Как называется язык программирования, используемый для создания приложений под iOS?"]
//    var answers: [[String]] = [["1976", "1984", "1996"], ["iOS", "macOS", "watchOS"], ["Swift", "Objective-C", "Java"]]
//    var correctAnswerIndex: Int = 0
//    var currentQuestionIndex: Int = 0
//    var score: Int = 0
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        showQuestion()
//    }
//
//    @IBAction func answerButtonTapped(_ sender: UIButton) {
//        if sender.tag == correctAnswerIndex {
//            score += 1
//        }
//        currentQuestionIndex += 1
//        if currentQuestionIndex >= questions.count {
//            showResult()
//        } else {
//            showQuestion()
//        }
//    }
//
//    func showQuestion() {
//        let question = questions[currentQuestionIndex]
//        let questionNumber = currentQuestionIndex + 1
//        questionLabel.text = "Вопрос \(questionNumber): \(question)"
//        let currentAnswers = answers[currentQuestionIndex]
//        answer1Button.setTitle(currentAnswers[0], for: .normal)
//        answer2Button.setTitle(currentAnswers[1], for: .normal)
//        answer3Button.setTitle(currentAnswers[2], for: .normal)
//        correctAnswerIndex = Int.random(in: 0..<currentAnswers.count)
//    }
//
//    func showResult() {
//        let alert = UIAlertController(title: "Результат", message: "Вы ответили правильно на \(score) из \(questions.count) вопросов.", preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default) { (_) in
//            self.currentQuestionIndex = 0
//            self.score = 0
//            self.showQuestion()
//        }
//        alert.addAction(action)
//        present(alert, animated: true, completion: nil)
//    }
//
//}
