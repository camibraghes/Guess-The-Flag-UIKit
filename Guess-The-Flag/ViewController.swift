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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "Uk", "Us"]
        askQuestion()
        
        firstButton.layer.borderWidth = 1
        firstButton.layer.borderColor = UIColor.gray.cgColor
        
        secondButton.layer.borderWidth = 1
        secondButton.layer.borderColor = UIColor.gray.cgColor
        
        thirdButton.layer.borderWidth = 1
        thirdButton.layer.borderColor = UIColor.gray.cgColor
    }
    
    func askQuestion() {
        firstButton.setImage(UIImage(named: countries[0]), for: .normal)
        secondButton.setImage(UIImage(named: countries[1]), for: .normal)
        thirdButton.setImage(UIImage(named: countries[2]), for: .normal)
    }

}

