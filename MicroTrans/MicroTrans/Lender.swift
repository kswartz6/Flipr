//
//  Lender.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation
import UIKit

class Lender: User {
    init(var userName:String, var password:String, var emailAddress:String, var social:Int, var address:String, var phone:String, var photo:UIImage) {
        
        super.init(userName: userName, password: password, emailAddres: emailAddress, social: social, address: address, phone: phone, photo: photo)
    }

}

