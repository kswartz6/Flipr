//
//  LoanRequest.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.


import Foundation

class LoanRequest {
    
    var cashRequested:Double
    var interestRate:Double
    var borrowerInformation:FlipperUser
    
    init(var cashReq:Double, var borrower:FlipperUser){
        borrowerInformation = borrower
        cashRequested = cashReq
        interestRate = Double()
        interestRate = calculateInterestRate()
    }
    
    // Need to implement an equation to calculate the interest rate dependent on the borrowers reputation
    func calculateInterestRate() -> Double {
        return 5.0
    }
}