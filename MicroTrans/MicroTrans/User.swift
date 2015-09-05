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

class User : PFUser {
    
    /*
    * Variable declarations
    * PFUser provides
    * 1) username
    * 2) pass
    * 3) email
    */
    
    var SSN:Int;
    var homeAddres:String;
    var phoneNumber:String;
    var userImage:UIImage;
    

    init(var userName:String, var password:String, var emailAddres:String,
        var social:Int, var address:String, var phone:String, var photo:UIImage){
        SSN = Int()
        homeAddres = String()
        phoneNumber = String()
        userImage = UIImage()
        super.init()
    }
    
    
    
}