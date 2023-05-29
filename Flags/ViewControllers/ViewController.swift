//
//  ViewController.swift
//  Flags
//
//  Created by Pavel Krigin on 13.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    
    let correctAnswer = "Austria"
    var secondsLeft = 300 // 5 минут * 60 секунд
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        showRandomFlag()
        setupAnswers()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            self?.secondsLeft -= 1
            if self?.secondsLeft == 0 {
                self?.timer?.invalidate()
                self?.showAlert(title: "Time's up!", message: "You ran out of time.")
            } else {
                self?.timerLabel.text = self?.timeString(from: self!.secondsLeft)
            }
        }
    }
    
    func timeString(from seconds: Int) -> String {
        let minutes = (seconds / 60) % 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    func showRandomFlag() {
        let randomFlag = "FlagOf\(["Austria", "Germany", "Italy"].randomElement()!)"
        flagImageView.image = UIImage(named: randomFlag)
    }
    
    func setupAnswers() {
        let answers = ["Austria", "Germany", "Italy"].shuffled()
        answer1Button.setTitle(answers[0], for: .normal)
        answer2Button.setTitle(answers[1], for: .normal)
        answer3Button.setTitle(answers[2], for: .normal)
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        timer?.invalidate()
        let selectedAnswer = sender.currentTitle!
        if selectedAnswer == correctAnswer {
            showAlert(title: "Correct!", message: "You got it right.")
        } else {
            showAlert(title: "Wrong!", message: "That's not the correct answer.")
        }
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.secondsLeft = 300
            self.startTimer()
            self.showRandomFlag()
            self.setupAnswers()
        }))
        present(alert, animated: true, completion: nil)
    }
}
