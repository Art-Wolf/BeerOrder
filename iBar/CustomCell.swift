//
//  CustomCell.swift
//  iBar
//
//  Created by John Doyle on 12/14/14.
//  Copyright (c) 2014 John Doyle. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var quantityNumber: UILabel!
    @IBOutlet weak var PriceNumber: UILabel!
    @IBOutlet weak var TotalNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setOrder(order: Order) {
        self.itemName.text = order.item
        self.quantityNumber.text = String(order.quantity)
        self.PriceNumber.text = NSString(format: "$%.2f", order.price)
        self.TotalNumber.text = NSString(format: "$%.2f", order.total)
    }
}
