//
//  DataManager.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation
import Parse

// Create a parse class in parse site
// Add attributes
// Define data types
// relationships

class DataManager: NSObject {
    
    static func registerNewUser(var newUser:FlipperUser) {
        
        // Start building the PFObject for the FlipperUser
        var userToBuild = PFObject(className: "FlipprUser")
        var accountInfo = PFObject(className: "BankAccount")
        
        // Build the BankAccount JSON
        accountInfo["InstitutionName"] = newUser.bankInformation.institutionName
        accountInfo["RoutingNumber"] = newUser.bankInformation.routingNumber
        accountInfo["AccountNumber"] = newUser.bankInformation.accountNumber
        userToBuild["AccountInformation"] = accountInfo
        
        // Now copy over all of the primitives from FlipperUser
        userToBuild["SSN"] = newUser.SSN
        userToBuild["HomeAddress"] = newUser.homeAddres
        userToBuild["PhoneNumber"] = newUser.phoneNumber
        userToBuild["IsLender"] = newUser.isLender
        userToBuild["UserImage"] = newUser.userImage
        
        // Now we will finish up by building and adding Reputation and 
        var reputation = PFObject(className: "Reputation")
        reputation["CurrentReputationScore"] = newUser.reputation.currentReputation
        userToBuild["Reputation"] = reputation
        
        // Finish up with the closed and open loans
        
        
    }
    
//    static func retrieveUser(var userName:String, var pass:String) -> FlipperUser {
//        
//    }
//    
//    static func retrieveClosedLoansForUser(var user:FlipperUser) -> [ClosedLoan] {
//        
//    }
//    
//    static func registerNewLoanRequest(var loanRequest:LoanRequest){
//        
//    }
//    
//    static func fulfillLoanRequest() {
//        
//    }
    
    
    
    
}