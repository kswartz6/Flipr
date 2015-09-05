//
//  SignUpViewController.swift
//  MicroTrans
//
//  Created by Emil Shirima on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.scrollView.backgroundColor = UIColor.greenColor()
        self.contentView.backgroundColor = UIColor.blueColor()
        
        self.scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.contentView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.scrollView.contentInset = UIEdgeInsetsZero
        
//        self.firstNameTextField.layer.borderColor = UIColor.greenColor().CGColor
//        self.firstNameTextField.layer.borderWidth = 5
        
        self.view.layer.borderColor = UIColor.grayColor().CGColor
        self.view.layer.borderWidth = 1
        
        var heightConstraint = NSLayoutConstraint(item: self.contentView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self.scrollView, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0)
        
        var widthConstraint = NSLayoutConstraint(item: self.contentView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.scrollView, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activateConstraints([heightConstraint,widthConstraint])
        
//        var leadingConstraint = NSLayoutConstraint(item: self.scrollView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0)
//        
//        var trailingConstraint = NSLayoutConstraint(item: self.scrollView, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Trailing, multiplier: 1, constant: 0)
//        
//        var topConstraint = NSLayoutConstraint(item: self.scrollView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: 0)
//        
//        var bottomConstraint = NSLayoutConstraint(item: self.scrollView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
//        
//        NSLayoutConstraint.activateConstraints([leadingConstraint,trailingConstraint,topConstraint,bottomConstraint])

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
//        dismissKeyboard()
//    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        scrollView.layoutIfNeeded()
////        scrollView.contentSize = 
//    }
    
    func dismissKeyboard()
    {
        firstNameTextField.resignFirstResponder()
        lastNameTextField.resignFirstResponder()
        phoneNumberTextField.resignFirstResponder()
        emailAddressTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
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
