//
//  AppDelegate.swift
//  MicroTrans
//
//  Created by Emil Shirima on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import UIKit
import Parse
import Bolts

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
//    func gotoMain () {
//        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewControllerWithIdentifier("Main") as! UIViewController
//        
//        self.window?.rootViewController = vc
//        
//        NSNotificationCenter.defaultCenter().removeObserver(self, name: "gotoMain", object: self)
//    }
//    
//    func gotoLogin () {
//        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewControllerWithIdentifier("loginViewController") as! UIViewController
//        
//        self.window?.rootViewController = vc
//        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("gotoMain"), name: "gotoMain", object: nil)
//        
//    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        Parse.enableLocalDatastore()
        
        FlipprUser.registerSubclass()
        BankAccount.registerSubclass()
        LoanRequest.registerSubclass()
        Loan.registerSubclass()
        Reputation.registerSubclass()
        
        // Initialize Parse.
        Parse.setApplicationId("Kvbnfpf0Dc7iBhwiPpkdbl4Gvl8Swwhoe5ySpMCc",
            clientKey: "hop34Bl0cJGJCr8aB3dm2H21ouLAyNywgbOFaq4u")
        
        // [Optional] Track statistics around application opens.
        PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        // Override point for customization after application launch.
        let url = NSURL(string: "http://api.reimaginebanking.com/atms?key=e3fc6eb8d7ad8c2e8c30bce35ef6c8a0")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!){
            (data, response, error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
        }
        task.resume()
//        if PFUser.currentUser() == nil {
//            gotoLogin()
//        }
        
//        if let currentUser = PFUser.currentUser()
//        {
//                gotoMain()
//        }else
//        {
//            gotoLogin()
//        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

