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
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
    }
    
    //IB-Outlets
    @IBOutlet weak var button1: UIButton!

    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    
    //Countries
    var countries = [String]()

    //Player score
    var score = 0
}

