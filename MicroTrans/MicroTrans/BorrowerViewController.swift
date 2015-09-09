//
//  BorrowerViewController.swift
//  MicroTrans
//
//  Created by Emil Shirima on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import UIKit

class BorrowerViewController: UIViewController {

    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var bio: UITextView!
    @IBOutlet weak var graph: UIImageView!
    
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var extraFee: UILabel!
    
    var userImages:[UIImage] = [] // equal to images
    var userNames:[String] = [] // equal to fullName
    var userBio:[String] = [] // equal to bio
    var price:[String] = [] // equal to amount
    var loanExpense:[String] = [] // equal to extraFee
    var totalPayout:[String] = [] // equal to totalAmount
    var loanDuration:[String] = []
    var graphz:[UIImage] = [] // equal to graph
    
    @IBAction func submitBtnAction(sender: AnyObject) {
        
        //TODO: Set an alert that the data has been sent
        print("Data sent")
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amount.layer.cornerRadius = 80.0
        duration.layer.cornerRadius = 80.0
        totalAmount.layer.cornerRadius = 80.0
        extraFee.layer.cornerRadius = 80.0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
