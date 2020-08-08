//
//  addMoneyWalletViewController.swift
//  TookanWallet
//
//  Created by soc-admin on 8/7/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit

class addMoneyWalletViewController: UIViewController {
    @IBOutlet weak var btnProceed: UIButton!
    
    @IBOutlet weak var addMoneyWalletTableView: UITableView!
    @IBOutlet weak var lblMoneyValue: UILabel!
    @IBOutlet weak var lblAddMoneyWallet: UILabel!
    var bankData = ["State Bank of India","HDFC Bank","ICICI Bank","Add Card"]
    var accountNumber = ["A/c No . *****56847","A/c No . *****56847","A/c No . *****56847"," "
    ]
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
        btnProceed.titleLabel?.text = "Procced"
    }

}

