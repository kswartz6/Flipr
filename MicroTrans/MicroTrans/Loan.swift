//
//  Loan.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation
import UIKit

class Loan {
    var amountOwed:Double
    var totalAmountOfLoan:Double
    var amountPayedBack:Double
    var interestRate:Double
    //var digitalSignatureFromBorrower:UIImage
    var borrower:FlipperUser
    var lender:FlipperUser
    
    
    init(var loanTotal:Double, var amountPayed:Double, var interest:Double, var borrow:FlipperUser, var lend:FlipperUser){
        amountOwed = Double()
        amountPayedBack = amountPayed
        totalAmountOfLoan = loanTotal
        interestRate = interest
        borrower = borrow
        lender = lend
        evaluateAmountOwed()
    }
    
    func evaluateAmountOwed() {
        amountOwed = totalAmountOfLoan - amountPayedBack
    }
    
    func payOnLoan(var amountToPay:Double) -> Bool {
        if(amountOwed >= amountToPay) {
            amountPayedBack += amountToPay;
            evaluateAmountOwed()
            return true
        }
        // Error return, showing that you could not actually pay this amount because it exceeded the amount
        // of the loan
        return false
    }
}