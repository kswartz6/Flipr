//
//  SignUpViewController.swift
//  MicroTrans
//
//  Created by Emil Shirima on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UITableViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confrimPasswordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var isLenderSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated:true)
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
//    @IBAction func nextBtnAction(sender: AnyObject) {
//        
//        dismissKeyboard()
//        
//        let user = PFUser()
//        user.username = usernameTextField.text
//        user.password = passwordTextField.text
//        user.email = emailTextField.text
//        user.signUpInBackgroundWithBlock { (ended : Bool, error : NSError?) -> Void in
//            
//            if error != nil {
//                
//                if (error?.code >= 200 ) && (error?.code <= 300) {
//                    self.showToastAlert("Username Taken", image: UIImage(named: "owl_animation-01")!)
//                } else {
//                    self.showToastAlert("Sign Up Failed", image: UIImage(named: "owl_animation-01")!)
//                    return
//                }
//                return
//            }
//
//        
//        
//    }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
