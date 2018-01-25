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
    
    @IBAction func factButtonTapped(_ sender: UIButton) {
        getRandomItems()
        sender.pulse()
    }
    
    func getRandomItems() {
        let randomNumber = arc4random_uniform(UInt32(funFacts.count))
        factLabel.text = funFacts[Int(randomNumber)]
        self.view.backgroundColor = colors[Int(randomNumber)]
        factButton.tintColor = colors[Int(randomNumber)]
    }

}

extension UIButton {
    func pulse() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        layer.add(pulse, forKey: nil)
    }
}


