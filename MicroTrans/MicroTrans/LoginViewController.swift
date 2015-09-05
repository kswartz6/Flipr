//
//  LoginViewController.swift
//  MicroTrans
//
//  Created by Emil Shirima on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginBtnAction(sender: AnyObject) {
        
        PFUser.logInWithUsernameInBackground(userNameTextField.text, password: passwordTextField.text) { (user: PFUser?, error: NSError?) -> Void in
            if error != nil{
                // TODO: Add an alert that you are not logged in
                println("User not logged in")
                println(error?.userInfo)
                Alert.loginFailed()
                return
            }
            
            if let user = user
            {
                println("\(user.description)")
                NSNotificationCenter.defaultCenter().postNotificationName("gotoMain", object: nil)
            }
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
