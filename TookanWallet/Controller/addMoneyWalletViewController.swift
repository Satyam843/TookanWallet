//
//  addMoneyWalletViewController.swift
//  TookanWallet
//
//  Created by soc-admin on 8/7/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit

class addMoneyWalletViewController: UIViewController {
    //IB Outlets
    @IBOutlet weak var btnProceed: UIButton!
    @IBOutlet weak var btnAddCard: UIButton!
    @IBOutlet weak var btnIcici: UIButton!
    @IBOutlet weak var btnHdfc: UIButton!
    @IBOutlet weak var btnSbi: UIButton!
    @IBOutlet weak var lblAddCard: UILabel!
    @IBOutlet weak var lblIciciAccount: UILabel!
    @IBOutlet weak var lblIciciBank: UILabel!
    @IBOutlet weak var lblHdfcAccount: UILabel!
    @IBOutlet weak var lblHdfcBank: UILabel!
    @IBOutlet weak var lblSbiAccount: UILabel!
    @IBOutlet weak var lblSbiBank: UILabel!
    @IBOutlet weak var addMoneyWalletTableView: UITableView!
    @IBOutlet weak var lblMoneyValue: UILabel!
    @IBOutlet weak var lblAddMoneyWallet: UILabel!
    //Variables
    var bankData = ["State Bank of India","HDFC Bank","ICICI Bank","Add Card"]
    var accountNumber = ["A/c No . *****56847","A/c No . *****56847","A/c No . *****56847"," "
    ]
    //View life cycle methods
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
        lblSbiBank.text = "State Bank of India"
        lblSbiAccount.text = "A/c No . *****56847"
        lblSbiBank.font = UIFont.boldSystemFont(ofSize: 20)
        lblHdfcBank.text = "HDFC Bank"
        lblHdfcAccount.text = "A/c No . *****56847"
        lblHdfcBank.font = UIFont.boldSystemFont(ofSize: 20)
        lblIciciBank.text = "ICICI Bank"
        lblIciciAccount.text = "A/c No . *****56847"
        lblIciciBank.font = UIFont.boldSystemFont(ofSize: 20)
        lblAddCard.text = "Add Card"
        lblAddCard.font = UIFont.boldSystemFont(ofSize: 20)
    }
    //IB Action methods
    @IBAction func tapRadioButton(_ sender: UIButton) {
        if sender.tag == 1
        {
            btnSbi.isSelected = true
            btnHdfc.isSelected = false
            btnIcici.isSelected = false
        }
        else if sender.tag == 2
        {
            btnSbi.isSelected = false
            btnHdfc.isSelected = true
            btnIcici.isSelected = false
        }
        else if sender.tag == 3
        {
            btnSbi.isSelected = false
            btnHdfc.isSelected = false
            btnIcici.isSelected = true
            
        }
    }
}

