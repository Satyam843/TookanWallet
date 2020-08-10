//
//  walletViewCell.swift
//  TookanWallet
//
//  Created by soc-admin on 8/6/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit

class walletViewCell: UITableViewCell {
    //IB Outlets
    @IBOutlet weak var lblOrderId: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblClosingBalance: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var llblTime: UILabel!
    @IBOutlet weak var lblCell: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
    //View life cycle methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
