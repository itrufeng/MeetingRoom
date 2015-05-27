//
//  ViewController.swift
//  MeetingRoom
//
//  Created by betta on 5/27/15.
//  Copyright (c) 2015 Zhao Jing. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @IBAction func registerRoom(sender: AnyObject) {
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellStatic = "cellInit"
        var tableViewCell = tableView.dequeueReusableCellWithIdentifier(cellStatic) as? UITableViewCell
        if(tableViewCell == nil) {
            tableViewCell = UITableViewCell (style: .Default, reuseIdentifier: cellStatic)
        }
        tableViewCell?.textLabel?.text = "Room 1"
        return tableViewCell as UITableViewCell!
    }
}

