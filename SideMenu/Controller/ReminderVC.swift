//
//  ReminderVC.swift
//  SideMenu
//
//  Created by Brain Tech on 30/10/1941 Saka.
//  Copyright © 1941 Brain Tech. All rights reserved.
//

import UIKit

class ReminderVC: UIViewController {
    
    var controller: HomeVC!
    var sideMenuIsVisible = false
    var tapGesture = UITapGestureRecognizer()
    var swipeGesture = UISwipeGestureRecognizer()
    @IBOutlet var viewContainer: UIView!
    
    @IBOutlet var btnmenu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapGesture.addTarget(self, action: #selector(didTap))
        tapGesture.numberOfTapsRequired = 1
        viewContainer.addGestureRecognizer(tapGesture)
    }
    
    @IBAction func btnMenu(_ sender: UIButton) {
        if sideMenuIsVisible == false{
            controller = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
            controller.view.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height:view.frame.height)
            controller.willMove(toParent: self)
            self.view.addSubview(controller.view)
            self.addChild(controller)
            controller.didMove(toParent: self)
            sideMenuIsVisible = true
        }
            
        else if sideMenuIsVisible == true{
            removeSideMenu()        }
    }
    @objc func didTap(){
        removeSideMenu()
    }
    func removeSideMenu(){
        controller.willMove(toParent: nil)
        controller.view.removeFromSuperview()
        controller.removeFromParent()
        sideMenuIsVisible = false
    }
}
