//
//  DoctorViewController.swift
//  Signup
//
//  Created by Kartik Mathpal on 11/04/16.
//  Copyright © 2016 Mathpal Inc. All rights reserved.
//

import UIKit

class DoctorViewController: UIViewController {

    @IBOutlet weak var circleImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        circleImg.layer.cornerRadius = circleImg.frame.size.width/2
        
        circleImg.clipsToBounds = true
        
    }
 
    @IBAction func requestBtnPressed(sender: AnyObject) {

        
        
        let alert = UIAlertController(title: "Confirm Visit", message: "Pay from wallet", preferredStyle : UIAlertControllerStyle.Alert)
       
        alert.addAction(UIAlertAction(title: "Accept |  Cancel", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert,animated : true,completion : nil)
        
       // alert.performSegueWithIdentifier("DocProfile", sender: self)
       
//        performSegueWithIdentifier("DocProfile", sender: self )
    }


    }


