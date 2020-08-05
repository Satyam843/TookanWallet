//
//  walletViewCell1.swift
//  TookanWallet
//
//  Created by soc-admin on 8/5/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit
protocol Wallet {
    func onClick(index : Int)
}
class walletViewCell1: UITableViewCell {

    @IBOutlet weak var lblBalanceValue: UILabel!
    @IBOutlet weak var lblBalanceHeading: UILabel!
    var celldelegate : Wallet?
    var index : IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func tapAddMoney(_ sender: Any) {
        celldelegate?.onClick(index: index!.row)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
