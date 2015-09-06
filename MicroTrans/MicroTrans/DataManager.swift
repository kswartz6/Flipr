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
    
    static func registerNewUser(var username:String, var password:String, var email:String, var institutionName:String, var routingNumber:String, var SSN:String, var homeAddress:String, var phoneNumber:String, var accountNumber:String , var isLender:Bool, var firstName:String, var lastName:String) {
        
        // Start building the PFObject for the FlipperUser
        var userToBuild = PFObject(className: "User")
        var accountInfo = PFObject(className: "BankAccount")
        
        // Build the base user
        userToBuild["username"] = username
        userToBuild["password"] = password
        userToBuild["email"] = email
        
        // Build the BankAccount JSON
        accountInfo["institutionName"] = institutionName
        accountInfo["routingNumber"] = routingNumber
        accountInfo["accountNumber"] = accountNumber
        userToBuild["accountInformation"] = accountInfo
        
        // Now copy over all of the primitives from FlipperUser
        userToBuild["SSN"] = SSN
        userToBuild["homeAddress"] = homeAddress
        userToBuild["phoneNumber"] = phoneNumber
        userToBuild["isLender"] = isLender
//        userToBuild["image"] = userImage
        
        // Now we will finish up by building and adding Reputation and 
        var reputation = PFObject(className: "Reputation")
//        reputation["CurrentReputationScore"] = newUser.reputation.currentReputationScore
        userToBuild["Reputation"] = reputation
        userToBuild["firstName"] = firstName
        userToBuild["lastName"] = lastName
        
        // Now send it all off to Parse
        userToBuild.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                print("New user successfully saved")
                // The object has been saved.
            } else {
                // We will want to warn the user
            }
        }
    }
    
    static func getAvailableLoanRequests() -> [LoanRequest] {
        
        var arr:[LoanRequest] = [LoanRequest]()
        var query = PFQuery(className:"LoanRequest")
        query.whereKey("hasBeenAccepted", equalTo:false)
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                println("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                
                if let objects = objects as? [LoanRequest] {
                    for object in objects {
                        arr.append(object)
                    }
//                    return arr
                }
                
            } else {
                // Log details of the failure
                println("Error: \(error!) \(error!.userInfo!)")
                return
            }
    }
        return arr
    }
    
//    static func retrieveUser(var userName:String, var pass:String) -> FlipprUser
//    {
//        var query = PFQuery(className:"User")
//        query.whereKey("username", equalTo:userName)
//        query.whereKey("password", equalTo: pass)
//        query.findObjectsInBackgroundWithBlock {
//            (objects: [AnyObject]?, error: NSError?) -> Void in
//            
//            if error == nil {
//                // The find succeeded.
//                println("Successfully retrieved \(objects!.count) scores.")
//                // Do something with the found objects
//                if let objects = objects as? [PFObject] {
//                    for object in objects {
//                        println(object.objectId)
//                    }
//                }
//            } else {
//                // Log details of the failure
//                println("Error: \(error!) \(error!.userInfo!)")
//            }
//        }
//    }
    
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