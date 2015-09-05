//
//  BankAccount.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation
import UIKit

class BankAccount {
    var institutionName:String
    var accountNumber:Int
    var routingNumber:Int
    var checkImage:UIImage
    

    // default constructor
    init(var name:String, var accNumber:Int, var routingNum:Int, var check:UIImage) {
        institutionName = name
        accountNumber = accNumber
        routingNumber = routingNum
        checkImage = check
    }
}