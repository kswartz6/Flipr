//
//  User.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation
import Parse
import UIKit

class FlipprUser : PFUser, PFSubclassing {
    
    /*
    * Variable declarations
    * PFUser provides
    * 1) username
    * 2) pass
    * 3) email
    */
    // Capital One API Requirements
    @NSManaged var capitalOneID:String?
    @NSManaged var homeAddres:String?
    @NSManaged var firstName:String!
    @NSManaged var lastName:String?
    
    @NSManaged var creditScore:Double
    
    @NSManaged var reputation:Reputation
    @NSManaged var loanRequests:LoanRequest
    @NSManaged var loans:[Loan]
    @NSManaged var bankInformation:BankAccount
    @NSManaged var SSN:String
    
    @NSManaged var phoneNumber:String
    @NSManaged var userImage:UIImage
    @NSManaged var isLender:Bool
    

    override init(){
        super.init()
    }
    
    static override func parseClassName() -> String {
        return "_User"
    }
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            // inform Parse about this subclass
            self.registerSubclass()
        }
    }
    
    func canBorrow() -> Bool {
        if(!isLender) {
            var i:Int = Int()
            for Loan in loans {
                if(!Loan.isClosed) {
                    ++i
                }
            }
            return (i < 1 )
        }
        return false
    }
    
    func hasLoanToPayOff() -> Bool {
        if(!isLender) {
            var i:Int = Int()
            for Loan in loans {
                if(!Loan.isClosed){
                    ++i
                }
            }
            return ( i < 1 )
        }
        return false
    }
    
    func makeLoanRequest() {
        if(canBorrow()) {
            
        }
    }
    /*
    This function sums up all of the money the borrower has borrowed over their complete history of using the
    app
    */
    func moneyBorrowedOverTime() -> Double {
        if(!isLender) {
            var sum:Double = Double()
            for Loan in loans {
                sum += Loan.totalAmountOfLoan
            }
            return sum
        }
        return Double()
    }
    /*
    This function allows the borrower to see how much interest they have payed over time
    */
    func interestPayedOverTime() -> Double {
        if(!isLender) {
            var sum:Double = Double()
            for Loan in loans {
                sum += Loan.interestCollected
            }
            return sum
        }
        return Double()
    }
    
    func payOffLoan(var amountToPay:Double) {
        if(hasLoanToPayOff()) {
            
        }
    }
}