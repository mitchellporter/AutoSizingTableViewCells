//
//  ViewController.swift
//  AutoSizingTableViewCells
//
//  Created by Mitchell Porter on 5/23/16.
//  Copyright © 2016 Mitchell Porter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the cell
        self.tableView.registerNib(UINib.init(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomTableViewCell
        cell.loadWithText("")
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}

