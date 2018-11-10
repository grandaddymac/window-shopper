//
//  Wage.swift
//  window-shopper
//
//  Created by gdm on 11/10/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
    
}
