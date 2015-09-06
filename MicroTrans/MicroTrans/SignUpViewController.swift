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
    @IBOutlet weak var bankNameTextField: UITextField!
    @IBOutlet weak var accountNumberTextField: UITextField!
    @IBOutlet weak var routingNumberTextField: UITextField!
    @IBOutlet weak var mailingAddress: UITextField!
    @IBOutlet weak var isLenderSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated:true)
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        //  Background Styling created by Christopher Jones
        
        var imageFile : UIImageView = UIImageView(image: UIImage(named: "BG2.png"))
        
        self.tableView.backgroundView = imageFile

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    //    - (void)tableView:(UITableView *)tableView
    //    willDisplayCell:(UITableViewCell *)cell
    //    forRowAtIndexPath:(NSIndexPath *)indexPath
    //    { [cell setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]]­];
    //
    //    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundView = UIImageView(image: UIImage(named: "BG3.png"))
    }
    
    // TODO: Perform checks to see if the textfields are empty or not
    @IBAction func nextBtnAction(sender: AnyObject) {
        // Check the input fields to make sure they weren't left blank
        // if they were send an alert, so they know to fill them out
        // before they can proceed to the next step in the process
        if(firstNameTextField.text == "") {
            var alert = UIAlertController(title: "Alert", message: "First Name needs filled out", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            return
        }
    }
    
    // TODO: Perform checks to see if the bank details are empty or not
    // TODO: Send the typed data to Parse
    @IBAction func submitBtnAction(sender: AnyObject) {
    }
    
    
//    var background: UITableView Background: UIView = UIView(frame: self.tableView.bounds)
//    background.backgroundColor = UIColor.colorWithPatternImage(UIImage.imageNamed("bg2.png"))
//    self.tableView.backgroundView = background

    //  End Code
    
    
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
