//
//  ViewController.swift
//  Times Table
//
//  Created by karur4n on 2015/10/04.
//  Copyright © 2015年 karur4n. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(sliderValue.value * 20)
        
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

