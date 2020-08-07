//
//  WalletViewController.swift
//  TookanWallet
//
//  Created by soc-admin on 8/5/20.
//  Copyright © 2020 soc-admin. All rights reserved.
//

import UIKit

class WalletViewController: UIViewController {

   
    

   
    
    @IBOutlet weak var btnAddMoney: UIButton!
    @IBOutlet weak var lblLimit: UILabel!
    @IBOutlet weak var lblMoney: UILabel!
    @IBOutlet weak var lblBalance: UILabel!
    @IBOutlet weak var walletTableView: UITableView!
    var cellHeight = [100,140,140,280]
    var sectionTitles  = ["5 August 2020","4 August 2020"]
    var imageName = [ UIImage(named: "AddedIcon"),
                      UIImage(named: "plusSquare")
                    ]
    var imageDescription = ["paid","Added"]
    var orderId = ["Order 15445","Order 15445","Order 15445","Order 15445"]
    var time = ["9:23 AM","9:23 AM","9:23 AM","9:23 AM"]
    var amountData = ["-Rs .180","+Rs .560","-Rs .180","+Rs .560"]
    var closingBalanceData = ["Closing Balance : Rs.546.54","Closing Balance : Rs.546.54","Closing Balance : Rs.546.54","Closing Balance : Rs.546.54"]
    override func viewDidLoad() {
        super.viewDidLoad()
super.view.backgroundColor = UIColor.init(red: 28/255, green: 52/255, blue: 248/255, alpha: 255/255)
        lblBalance.text = "Your Balance"
        lblMoney.text = " Rs . 3547"
        lblLimit.text = "Limit: 10000"
        lblBalance.textColor = UIColor.white
        lblMoney.textColor = UIColor.white
        lblLimit.textColor = UIColor.white
        //lblBalance.adjustsFontSizeToFitWidth = true
        //lblMoney.adjustsFontSizeToFitWidth = true
        //lblLimit.adjustsFontSizeToFitWidth = true
        //lblMoney.adjustsFontForContentSizeCategory = true
    
        btnAddMoney.titleLabel?.text = "Add Money"
        btnAddMoney.titleLabel?.textColor = UIColor.white
    }
    
  
}
extension WalletViewController: UITableViewDelegate,UITableViewDataSource
{
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return sectionTitles[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = walletTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! walletViewCell
   cell.imgCell.image = imageName[indexPath.row]
        cell.lblCell.text = imageDescription[indexPath.row]
        cell.lblTime.text = time[indexPath.row]
        cell.lblOrderId.text = orderId[indexPath.row]
        cell.lblAmount.text = amountData[indexPath.row]
        cell.lblClosingBalance.text = closingBalanceData [indexPath.row]
        cell.lblAmount.font = UIFont.boldSystemFont(ofSize: 17)
        cell.lblOrderId.font = UIFont.boldSystemFont(ofSize: 17)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    /*func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(cellHeight[indexPath.row])
    }*/
}
