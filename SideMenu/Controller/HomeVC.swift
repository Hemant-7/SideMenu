//
//  HomeVC.swift
//  SideMenu
//
//  Created by Brain Tech on 27/10/1941 Saka.
//  Copyright © 1941 Brain Tech. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tblView: UITableView!
    @IBOutlet var viewContainer: UIView!
    
    var arrOfTitle = ["Home","Notification","Feedback","Login"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnMemu(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tblView.dequeueReusableCell(withIdentifier: "CellProfile") as! CellProfile
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 150
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tblView.dequeueReusableCell(withIdentifier: "CellTitle") as! CellTitle
        cell.lblTitle.text = self.arrOfTitle[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let vc = storyboard?.instantiateViewController(identifier: "ReminderVC") as! ReminderVC
            self.navigationController?.pushViewController(vc, animated: true)
        }else
            if indexPath.row == 1{
            
        }else
        if indexPath.row == 2{
            
        }else
        if indexPath.row == 3{
            
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let cell = tblView.dequeueReusableCell(withIdentifier: "CellFooterDescription") as! CellFooterDescription
        return cell
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 70
    }
}
