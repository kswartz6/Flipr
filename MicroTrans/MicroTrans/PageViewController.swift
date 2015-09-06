//
//  PageViewController.swift
//  Flippr
//
//  Created by Emil Shirima on 9/6/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {

    var mainPages:[BorrowerViewController] = []
    
//    YourViewControllerClass *viewController = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil] instantiateViewControllerWithIdentifier:@"ViewController"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.delegate = self
        self.dataSource = self
        
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Main") as! BorrowerViewController
        
        let viewController1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Main") as! BorrowerViewController
        
        let viewController2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Main") as! BorrowerViewController
        
        mainPages = [viewController,viewController1,viewController2]
        
        self.setViewControllers([mainPages[0]], direction: UIPageViewControllerNavigationDirection.Forward, animated: true, completion: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        if let index = find(mainPages, viewController as! BorrowerViewController)
        {
            if index > 0
            {
                return mainPages[index - 1]
            }
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        if let index = find(mainPages, viewController as! BorrowerViewController)
        {
            if index < mainPages.count - 1
            {
                return mainPages[index + 1]
            }
        }
        
        return nil
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return mainPages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
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
