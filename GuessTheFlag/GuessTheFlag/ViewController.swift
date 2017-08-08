//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Jose Melendez on 8/8/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

//Frameworks

import GameplayKit

import UIKit

class ViewController: UIViewController {
    
    //Countries
    var countries = [String]()
    
    //Player score
    var score = 0
    
    //Correct answer
    var correctAnswer = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //When the view loads add these countries to the array of countries
        
        countries.append("estonia")
        
        countries.append("france")
        
        countries.append("germany")
        
        countries.append("ireland")
        
        countries.append("russia")
        
        countries.append("uk")
        
        countries.append("us")
        
        countries.append("spain")
        
        countries.append("poland")
        
        countries.append("italy")
        
        countries.append("monaco")
        
        countries.append("nigeria")
        
        //Or you can do it this way
        
       /*
         countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
         */
        
        //Border witdth of the buttons
        button1.layer.borderWidth = 2
        
        button2.layer.borderWidth = 2
        
        button3.layer.borderWidth = 2
        
        //Ask question method
        askQuestion()

    }
    
    //Function "ask question"
    
    func askQuestion() {
        
        //Randomize the order of the flags
        
        countries = GKRandomSource().arrayByShufflingObjects(in: countries) as! [String]
        
        //Set the buttons to an image of a flag
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        //Generate a random number between 0 - 2
        correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
        
        //Change the title of the navigation bar
        title = countries[correctAnswer].uppercased()
    
    }
    
    //IB-Outlets
    @IBOutlet weak var button1: UIButton!

    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    //IB-Actions
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
    }
    
}

