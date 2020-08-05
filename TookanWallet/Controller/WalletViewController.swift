//
//  WalletViewController.swift
//  TookanWallet
//
//  Created by soc-admin on 8/5/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit

class WalletViewController: UIViewController {

    @IBOutlet weak var walletTableView: UITableView!
    var cellHeight = [100,140,140,280]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
extension WalletViewController: UITableViewDelegate,UITableViewDataSource
{
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        if(indexPath.row == 0)
        {
              let cell = walletTableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! walletViewCell1
        cell.lblBalanceHeading.text = "your Balance"
        cell.lblBalanceValue.text = "Rs .  3547"
        cell.backgroundColor = UIColor.init(red: 68/255, green: 148/255, blue: 243/255, alpha: 1)
    cell.celldelegate=self
            cell.index=indexPath
            return cell
        }
            else if(indexPath.row == 2)
        {
            let cell = walletTableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! walletViewCell2
            return cell
        }
        else if(indexPath.row == 3)
        {
            let cell = walletTableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! walletViewCell2
            return cell
        }
        else
        {
            let cell4 = walletTableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! walletViewCell4
            return cell4
        }
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(cellHeight[indexPath.row])
    }
}
extension WalletViewController : Wallet
{
    func onClick(index: Int) {
        
    }
    
    
}
