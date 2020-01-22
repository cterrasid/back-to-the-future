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
        
        AnimateItem(duration: 0.5, delay: 0, object: firstDigit)
        AnimateItem(duration: 0.5, delay: 0.2, object: secondDigit)
        AnimateItem(duration: 0.5, delay: 0.4, object: thirdDigit)
        AnimateItem(duration: 0.5, delay: 0.6, object: fourthDigit)
    }
    
    func AnimateItem(duration: Double, delay: Double, object: UIView) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
        }) { (true) in
        }
    }


}

