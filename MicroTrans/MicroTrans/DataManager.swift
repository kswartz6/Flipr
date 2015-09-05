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
    
    static func registerNewUser(var username:String, var password:String, var email:String, var newUser:FlipprUser) {
        
        // Start building the PFObject for the FlipperUser
        var baseUser = PFObject(className: "User")
        var userToBuild = PFObject(className: "FlipprUser")
        var accountInfo = PFObject(className: "BankAccount")
        
        // Build the base user
        baseUser["username"] = username
        baseUser["password"] = password
        baseUser["email"] = email
        
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
        // Need to ask Emil
        
        
        // At the end set the baseUser's reference to flippr account up
        baseUser["FlipprAccount"] = userToBuild
        
        // Now send it all off to Parse
        baseUser.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                // The object has been saved.
            } else {
                // We will want to warn the user
            }
        }
    }
    
    static func retrieveUser(var userName:String, var pass:String) //-> FlipprUser
    {
        var query = PFQuery(className:"User")
        query.whereKey("username", equalTo:userName)
        query.whereKey("password", equalTo: pass)
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                println("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                if let objects = objects as? [PFObject] {
                    for object in objects {
                        println(object.objectId)
                    }
                }
            } else {
                // Log details of the failure
                println("Error: \(error!) \(error!.userInfo!)")
            }
        }
    }
    
    // Not sure if these are needed as retrieveUser should return a full userprofile on login
//    static func retrieveClosedLoansForUser(var user:FlipperUser) -> [ClosedLoan] {
//        
//    }
//    
//    static func registerNewLoanRequest(var loanRequest:LoanRequest){
//        
//    }
    
    static func fulfillLoanRequest() {
        
    }
    
    
    
    
}