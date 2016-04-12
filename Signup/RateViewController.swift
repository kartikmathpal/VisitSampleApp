//
//  RateViewController.swift
//  Signup
//
//  Created by Kartik Mathpal on 12/04/16.
//  Copyright © 2016 Mathpal Inc. All rights reserved.
//

import UIKit

class RateViewController: UIViewController {

    @IBOutlet weak var circleImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        circleImg.layer.cornerRadius = circleImg.frame.size.width/2
        
        circleImg.clipsToBounds = true
        
    }
    @IBAction func requestBtnPressed(sender: AnyObject) {
        
        
        
        performSegueWithIdentifier("two", sender: self )
    }

}
