//
//  FirstViewController.swift
//  back to the future
//
//  Created by Clarette Terrasi on 21/01/2020.
//  Copyright © 2020 Clarette Terrasi Díaz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    // Digits
    @IBOutlet weak var digitOne: UILabel!
    @IBOutlet weak var digitTwo: UILabel!
    @IBOutlet weak var digitThree: UILabel!
    @IBOutlet weak var digitFour: UILabel!
    
    // Year
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let year = Utilities().GetCurrentYear()
        digitOne.text = Utilities().GetLetterAtIndex(str: year, location: 0)
        digitTwo.text = Utilities().GetLetterAtIndex(str: year, location: 1)
        digitThree.text = Utilities().GetLetterAtIndex(str: year, location: 2)
        digitFour.text = Utilities().GetLetterAtIndex(str: year, location: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
        
        view.backgroundColor = UIColor.white
        
        Tick()
    }
    
    @objc func Tick() {
        timeLabel.text = Utilities().GetCurrentTime()
        
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveLinear, animations: {
            self.view.alpha = 0.8
        }) { (true) in
            self.view.alpha = 1.0
        }
    }

}

