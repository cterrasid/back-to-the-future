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
    
    func GetCurrentTime() -> String {
        let date = Date()
        
        let formatter = DateFormatter()
        formatter.dateStyle = .none // La fecha no se muestra, sólo se usa de referencia para extraer la hora
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        
        return timeString
    }
}
