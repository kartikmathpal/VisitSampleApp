//
//  DoctorTableViewController.swift
//  Signup
//
//  Created by Kartik Mathpal on 12/04/16.
//  Copyright © 2016 Mathpal Inc. All rights reserved.
//

import UIKit

class DoctorTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    
    // MARK: - Table view data source
    var doctor = ["Doc1","Doc2","Doc3","Doc4","Doc5","Doc6"]
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doctor.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DoctorCell")
       cell!.textLabel?.text = doctor[indexPath.row]
       cell!.imageView?.image = UIImage(named: "drwho")
        return cell!
    }
}