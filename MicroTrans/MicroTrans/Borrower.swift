//
//  Borrower.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation
import UIKit

class Borrower: User {
    var reputation:BorrowerReputation
    var loanRequests:[Int: LoanRequest]
    var activeLoans:[Int: Loan]
    var closedLoans:[Int: ClosedLoan]
    
    init(var userName:String, var password:String, var emailAddress:String, var social:Int, var address:String, var phone:String, var photo:UIImage, var rep:BorrowerReputation, var loanreqs:[Int: LoanRequest], var activeLoanz:[Int: Loan]) {
        reputation = rep
        loanRequests = loanreqs
        activeLoans = activeLoanz
        super.init(userName: userName, password: password, emailAddres: emailAddress, social: social, address: address, phone: phone, photo: photo)
    }
}