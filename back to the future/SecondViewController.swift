//
//  SecondViewController.swift
//  back to the future
//
//  Created by Clarette Terrasi on 21/01/2020.
//  Copyright © 2020 Clarette Terrasi Díaz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var firstDigit: UILabel!
    @IBOutlet weak var secondDigit: UILabel!
    @IBOutlet weak var thirdDigit: UILabel!
    @IBOutlet weak var fourthDigit: UILabel!
    
    let utils = Utilities()
    
    override func viewDidLoad() {
        super.viewDidLoad()  
        let year = utils.GetCurrentYear()
        
        firstDigit.text = utils.GetLetterAtIndex(str: year, location: 0)
        secondDigit.text = utils.GetLetterAtIndex(str: year, location: 1)
        thirdDigit.text = utils.GetLetterAtIndex(str: year, location: 2)
        fourthDigit.text = utils.GetLetterAtIndex(str: year, location: 3)
    }
    
    @IBAction func goToTheFuture(_ sender: Any) {
        let year = utils.GetRandomYear()
        
        firstDigit.text = utils.GetLetterAtIndex(str: year, location: 0)
        secondDigit.text = utils.GetLetterAtIndex(str: year, location: 1)
        thirdDigit.text = utils.GetLetterAtIndex(str: year, location: 2)
        fourthDigit.text = utils.GetLetterAtIndex(str: year, location: 3)
    }


}

