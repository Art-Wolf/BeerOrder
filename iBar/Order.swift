//
//  Order.swift
//  iBar
//
//  Created by John Doyle on 12/14/14.
//  Copyright (c) 2014 John Doyle. All rights reserved.
//

import Foundation

class Order
{
    var item = "item"
    var quantity = 0
    var price = 1.00
    var total = 1.00
    
    init(item: String, quantity: Int, price: Double, total: Double)
    {
        self.item = item
        self.quantity = quantity
        self.price = price
        self.total = total
    }
}