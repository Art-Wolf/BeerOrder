//
//  ViewController.swift
//  iBar
//
//  Created by John Doyle on 12/14/14.
//  Copyright (c) 2014 John Doyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var orderTable: UITableView!
    var arrayOfOrders = [Order]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.fillOrders()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fillOrders() {
        var order1 = Order(item: "Guiness", quantity: 1, price: 4.50, total: 4.50)
        var order2 = Order(item: "G&T", quantity: 2, price: 3.00, total: 6.00)
        
        arrayOfOrders.append(order1)
        arrayOfOrders.append(order2)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfOrders.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell") as CustomCell
        
        let order = arrayOfOrders[indexPath.row]
        
        cell.setOrder(order)
        
        return cell
    }
}

