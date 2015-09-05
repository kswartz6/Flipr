//
//  ClosedLoan.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation

class ClosedLoan {
    var dateClosed:String
    var moneyEarned:Double
    
    init(var dateString:String, var money:Double) {
        dateClosed = dateString
        moneyEarned = money
    }
}
