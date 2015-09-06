//
//  BankAccount.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation
import UIKit
import Parse

class BankAccount : PFObject, PFSubclassing {
    
    static func parseClassName() -> String {
        return "BankAccount"
    }
    
    @NSManaged var InstitutionName:String!
    @NSManaged var AccountNumber:String!
    @NSManaged var RoutingNumber:String!
    @NSManaged var accountBalance:Double
    //var checkImage:UIImage
    
    override init() {
        super.init()
    }
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            // inform Parse about this subclass
            self.registerSubclass()
        }
    }
}