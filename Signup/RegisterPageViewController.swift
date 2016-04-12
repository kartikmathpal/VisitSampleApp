//
//  RegisterPageViewController.swift
//  Signup
//
//  Created by Kartik Mathpal on 28/03/16.
//  Copyright © 2016 Mathpal Inc. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBOutlet weak var userPasswordTextField: UITextField!
   
    @IBOutlet weak var userConfirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signupButton(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let userConfirmPassword = userConfirmPasswordTextField.text
        
        //check for empty fields
        if(userEmail!.isEmpty || userPassword!.isEmpty || userConfirmPassword!.isEmpty )
        {
            displayAlertMessage("All fields are required");
            return
        }
        
        if(userPassword != userConfirmPassword){
            
            displayAlertMessage("Passwords do not match");
            return
        }
        
        //store locally
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userEmail")
        NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey: "userPassword")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        //Display confirmation
        let myAlert = UIAlertController(title: "Alert", message: "Congratulations!! , registered successfully", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default){action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        
    }
   
    

    func displayAlertMessage(userMessage : String){
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
        
    }

}
