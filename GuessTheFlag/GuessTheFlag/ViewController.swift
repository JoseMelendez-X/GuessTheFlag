//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Jose Melendez on 8/8/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //When the view loads add these countries to the array of countries
        countries.append("Estonia")
        countries.append("france")
        countries.append("germany")
        countries.append()
        
        
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

