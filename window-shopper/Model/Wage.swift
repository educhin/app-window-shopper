//
//  Wage.swift
//  window-shopper
//
//  Created by Chinedu Arinze on 10/5/17.
//  Copyright © 2017 Chinedu Arinze. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
    
}
