//
//  ViewController.swift
//  Hangman
//
//  Created by Rishabh Thakkar on 9/25/18.
//  Copyright © 2018 ribsthak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hangStatus: UIImageView!
    @IBOutlet weak var wordStatus: UILabel!
    @IBOutlet var letters: [UIButton]!
    var wordToGuess:String?
    var currentString:String?
    var numLives:Int = 6
    let possibleWords = ["Pineapple", "Texas", "Gates", "Dell", "Complex", "Mixed", "Bracket", "Hangman", "Imperial"]
    
    @IBAction func guessedLetter(_ sender: UIButton) {
        if var s = currentString, let w = wordToGuess, let letter = sender.titleLabel!.text {
            if(w.lowercased().contains(letter.lowercased())) {
                for (index, char) in w.enumerated() {
                    if(String(char).lowercased() == letter.lowercased()) {
                        s = String(s.prefix(index) + Substring(String(char)) + s.dropFirst(index + 1))
                    }
                }
                currentString = s
                if(currentString == wordToGuess) {
                    wordStatus.text = "Good Job! You guessed \(w) correctly"
                    for button in letters {
                        button.isEnabled = false
                    }
                } else {
                    wordStatus.text = displayString(with: currentString!)
                }
            } else {
                numLives -= 1
                hangStatus.image = UIImage(named: String(numLives) + " lives")
                if numLives == 0 {
                    for button in letters {
                        button.isEnabled = false
                    }
                    wordStatus.text = "Aww man, you dead. The answer was \(w)"
                }
            }
            sender.isEnabled = false
        }
        
    }
    
    func displayString(with: String) -> String {
        var out = ""
        for(_,char) in with.enumerated() {
            out.append(char)
            out.append(" ")
        }
        return out
    }
    @IBAction func resetGame(_ sender: Any) {
        reloadGame()
    }
    
    func reloadGame() {
        numLives = 6
        hangStatus.image = UIImage(named: "6 lives")
        wordToGuess = possibleWords[Int(arc4random_uniform(UInt32(possibleWords.count)))]
        currentString = ""
        for _ in 0..<wordToGuess!.count {
            currentString!.append("_")
        }
        wordStatus.text = displayString(with: currentString!)
        for button in letters {
            button.isEnabled = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reloadGame()
    }

    

}

