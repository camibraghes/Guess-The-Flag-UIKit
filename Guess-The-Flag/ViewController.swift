//
//  ViewController.swift
//  Guess-The-Flag
//
//  Created by Camelia Braghes on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "Uk", "Us"]
        askQuestion()
        
        firstButton.layer.borderWidth = 0.3
        firstButton.layer.cornerRadius = 4
        firstButton.layer.borderColor = UIColor.gray.cgColor
        
        secondButton.layer.borderWidth = 0.3
        secondButton.layer.cornerRadius = 4
        secondButton.layer.borderColor = UIColor.gray.cgColor
        
        thirdButton.layer.borderWidth = 0.3
        thirdButton.layer.cornerRadius = 4
        thirdButton.layer.borderColor = UIColor.gray.cgColor
        
        self.view.backgroundColor = UIColor.systemGroupedBackground
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        firstButton.setImage(UIImage(named: countries[0]), for: .normal)
        secondButton.setImage(UIImage(named: countries[1]), for: .normal)
        thirdButton.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = "Guess the flag for \(countries[correctAnswer].uppercased())"
    }
    
    
}

