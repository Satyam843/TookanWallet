//
//  AddMoneyViewController.swift
//  TookanWallet
//
//  Created by soc-admin on 8/5/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit

class AddMoneyViewController: UIViewController,UITextFieldDelegate {
    //IB Outlets
    @IBOutlet weak var amountTextField: UITextField!
    //View life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountTextField.delegate = self
    amountTextField.setBottomOrder()
       amountTextField.setPadding()
        amountTextField.borderStyle = UITextField.BorderStyle.none
    }
    //Private methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        amountTextField.resignFirstResponder()
        return true
    }
}
extension UITextField
{
    func setPadding()
    {
        let paddingView = UIView(frame:CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setBottomOrder()
    {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 0
    }
}

