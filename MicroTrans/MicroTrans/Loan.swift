//
//  Loan.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

// NESSIE API KEY
// e3fc6eb8d7ad8c2e8c30bce35ef6c8a0
// Capital 1 URL
// api.reimaginebanking.com/customers?key=e3fc6eb8d7ad8c2e8c30bce35ef6c8a0

import Foundation
import Parse
import UIKit

class Loan : PFObject, PFSubclassing {
    
    @NSManaged var totalAmountOfLoan:Double
    @NSManaged var amountCurrentlyPayed:Double
    @NSManaged var interestRate:Double
    //var digitalSignatureFromBorrower:UIImage
    @NSManaged var borrower:FlipprUser
    @NSManaged var lender:FlipprUser
    @NSManaged var isClosed:Bool

    
    var amountOwed:Double
    var interestCollected:Double
    
    override init(){
        amountOwed = Double()
        interestCollected = Double()
        super.init()
    }
    
    static func parseClassName() -> String {
        return "Loan"
    }
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            // inform Parse about this subclass
            self.registerSubclass()
        }
    }
    
    func evaluateAmountOwed() {
        amountOwed = totalAmountOfLoan - amountCurrentlyPayed
    }
    
    func makeTransfer(var amountOfMoneyToTransfer:Double) -> Bool {
        // Hook up some money transfer API to actually transfer money from borrower to lender and
        // then update within our DB and reflect into the app
        
        return true;
    }
    
    func payOnLoan(var amountToPay:Double) -> Bool {
        if(amountOwed >= amountToPay) {
            amountCurrentlyPayed += amountToPay;
            evaluateAmountOwed()
            return true
        }
        // Error return, showing that you could not actually pay this amount because it exceeded the amount
        // of the loan
        return false
    }
}