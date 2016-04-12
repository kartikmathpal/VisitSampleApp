//
//  ViewController.swift
//  Signup
//
//  Created by Kartik Mathpal on 27/03/16.
//  Copyright © 2016 Mathpal Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userEmail : String?
    var userPassword : String?

    @IBOutlet weak var userEmailTextfield: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func loginButton(sender: AnyObject) {
        
         userEmail = userEmailTextfield.text
         userPassword = userPasswordTextField.text
        
        let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("userEmail");
        
        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("userPassword");
    
        if(userEmailStored == userEmail && userPasswordStored == userPassword)
        {
            
                // Login is successfull
                NSUserDefaults.standardUserDefaults().setBool(true,forKey:"isUserLoggedIn");
                NSUserDefaults.standardUserDefaults().synchronize();
                
                self.dismissViewControllerAnimated(true, completion:nil);
               
                //Display confirmation
                let myAlert = UIAlertController(title: "Alert", message: "Congratulations!! , logged in successfully", preferredStyle: UIAlertControllerStyle.Alert)
                
                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default){action in self.dismissViewControllerAnimated(true, completion: nil)
                }
                myAlert.addAction(okAction)
                
//               self.presentViewController(myAlert, animated:             true, completion: nil)
            performSegueWithIdentifier("GetVisit", sender: self)
            
            
                
            }

//            else{
//                
//                displayAlertMessage("Enter valid credentials");
//                
//            }
            
        
        else{
            
            displayAlertMessage("Enter valid credentials");
            
        }
        
    }
    
    func displayAlertMessage(userMessage : String){
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
        
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//     
//        
//        let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("userEmail");
//        
//        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("userPassword");
//        
//        if(userEmailStored == userEmail && userPasswordStored == userPassword){
//            
//            performSegueWithIdentifier("GetVisit", sender: self)
//            
//        
//    }
//}

}

