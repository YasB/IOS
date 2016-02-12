//
//  ViewController.swift
//  Checklists
//
//  Created by Visibrain on 11/02/2016.
//  Copyright © 2016 Costanza. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0text = "Finish Thailande trip"
    var row1text = "Make Bread"
    var row2text = "Learn iOS development"
    var row3text = "Gym practice"
    var row4text = "Eat Avocados"
    var row0checked = false
    var row1checked = false
    var row2checked = false
    var row3checked = false
    var row4checked = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100 //tells how many data rows
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem", forIndexPath: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row % 5 == 0{
            label.text = row0text
        } else if indexPath.row  % 5 == 1{
            label.text = row1text
        } else if indexPath.row  % 5 == 2{
            label.text = row2text
        } else if indexPath.row % 5 == 3{
            label.text = row3text
        } else if indexPath.row % 5 == 4{
            label.text =  row4text
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath){
            if cell.accessoryType == .None {
                cell.accessoryType = .Checkmark
            }else{
                cell.accessoryType = .None
            }
        }
        
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}

