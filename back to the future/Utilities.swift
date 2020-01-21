//
//  Utilities.swift
//  back to the future
//
//  Created by Clarette Terrasi on 21/01/2020.
//  Copyright © 2020 Clarette Terrasi Díaz. All rights reserved.
//

import Foundation

class Utilities {
    
    func GetCurrentYear () -> String {
        let date = Date()
        let calendar = Calendar.current
        
        return String(calendar.component(.year, from: date))
    }
    
    func GetLetterAtIndex (str: String, location: Int) -> String {
        let index = str.index(str.startIndex, offsetBy: location)
        
        return String(str[index])
    }
}
