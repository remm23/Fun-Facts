//
//  ViewController.swift
//  FunFacts
//
//  Created by Remi Tobias on 07/01/2018.
//  Copyright © 2018 Remi Tobias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var factButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        factButton.backgroundColor = UIColor.white
        factButton.layer.cornerRadius = 30
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func factButtonTapped() {
        getRandomItems()
    }
    
    func getRandomItems() {
        let randomNumber = arc4random_uniform(UInt32(funFacts.count))
        factLabel.text = funFacts[Int(randomNumber)]
        self.view.backgroundColor = colors[Int(randomNumber)]
        factButton.tintColor = colors[Int(randomNumber)]
    }

}

