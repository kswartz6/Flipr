//
//  BorrowerReputation.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.


import Foundation
import Parse

class Reputation : PFObject, PFSubclassing {
    
    @NSManaged var currentReputationScore:Double
    
    override init(){
        super.init()
    }
    
    static func parseClassName() -> String {
        return "Reputation"
    }
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            // inform Parse about this subclass
            self.registerSubclass()
        }
    }
    
    
}