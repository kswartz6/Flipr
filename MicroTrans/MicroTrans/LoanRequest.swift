//
//  LoanRequest.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.


import Foundation
import Parse

class LoanRequest : PFObject, PFSubclassing {
    
    @NSManaged var CashRequested:Double
    @NSManaged var interestRate:Double
    @NSManaged var borrower:FlipprUser!
    @NSManaged var hasBeenAccepted:Bool
    
    static func parseClassName() -> String {
        return "LoanRequest"
    }
    
    override init(){
     super.init()
    }
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            // inform Parse about this subclass
            self.registerSubclass()
        }
    }
    
    // Need to implement an equation to calculate the interest rate dependent on the borrowers reputation
    func calculateInterestRate() -> Double {
        return 5.0
    }
}