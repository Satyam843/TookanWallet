//
//  addMoneyWalletViewController.swift
//  TookanWallet
//
//  Created by soc-admin on 8/7/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit

class addMoneyWalletViewController: UIViewController {

    @IBOutlet weak var lblMoneyValue: UILabel!
    @IBOutlet weak var lblAddMoneyWallet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAddMoneyWallet.text = " Add Money Wallet"
        lblMoneyValue.text = "Rs .6000"
        lblAddMoneyWallet.font = UIFont.boldSystemFont(ofSize: 20)
        lblMoneyValue.font  = UIFont.boldSystemFont(ofSize: 20)
        lblAddMoneyWallet.adjustsFontSizeToFitWidth = true
        //lblMoneyValue.adjustsFontSizeToFitWidth = true
        //lblAddMoneyWallet.adjustsFontForContentSizeCategory = true
        // Do any additional setup after loading the view.
    }
    

   

}
