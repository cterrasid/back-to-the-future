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
        // Do any additional setup after loading the view, typically from a nib.
        
        // Get each
        let year = Utilities().GetCurrentYear()
        digitOne.text = Utilities().GetLetterAtIndex(str: year, location: 0)
        digitTwo.text = Utilities().GetLetterAtIndex(str: year, location: 1)
        digitThree.text = Utilities().GetLetterAtIndex(str: year, location: 2)
        digitFour.text = Utilities().GetLetterAtIndex(str: year, location: 3)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
    }
    
    @objc func Tick() {
        timeLabel.text = Utilities().GetCurrentTime()
    }

}

