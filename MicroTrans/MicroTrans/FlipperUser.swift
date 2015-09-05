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

class FlipprUser : PFUser {
    
    /*
    * Variable declarations
    * PFUser provides
    * 1) username
    * 2) pass
    * 3) email
    */
    var reputation:Reputation
    var loanRequests:LoanRequest
    var activeLoans:[Loan]
    var closedLoans:[ClosedLoan]
    var bankInformation:BankAccount
    var SSN:String
    var homeAddres:String
    var phoneNumber:String
    var userImage:UIImage
    var isLender:Bool
    

    init(var userName:String, var password:String, var emailAddres:String,
        var social:String, var address:String, var phone:String, var photo:UIImage, var rep:Reputation,
        var loanReq:LoanRequest, var activeLoanz:[Loan], var loansClosed:[ClosedLoan], var lender:Bool, var bankinfo:BankAccount){
        SSN = String()
        homeAddres = address
        phoneNumber = phone
        userImage = photo
        reputation = rep
        loanRequests = loanReq
        activeLoans = activeLoanz
        closedLoans = loansClosed
        bankInformation = bankinfo
        isLender = lender
        super.init()
    }
    
    func canBorrow() -> Bool {
        return (!isLender && activeLoans.count < 1 )
    }
    
    func hasLoanToPayOff() -> Bool {
        return (!isLender && activeLoans.count >= 1)
    }
    
    func makeLoanRequest() {
        if(canBorrow()) {
            
        }
    }
    
    func payOffLoan(var amountToPay:Double) {
        if(hasLoanToPayOff()) {
            
        }
    }
}