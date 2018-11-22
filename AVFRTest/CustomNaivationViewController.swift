//
//  CustomNaivationViewController.swift
//  AVFRTest
//
//  Created by Johnson Chan on 2018/11/22.
//  Copyright © 2018 Johnson Chan. All rights reserved.
//

import UIKit
import LNSideMenu

class CustomNaivationViewController: LNSideMenuNavigationController {
    
    fileprivate func initialCustomMenu(_ position: Position) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LeftMenuViewController") as! LeftMenuViewController
        menu = LNSideMenu(navigation: self, menuPosition: position, customSideMenu: vc, size: .custom(UIScreen.main.bounds.width - 60))
        menu?.delegate = self
        menu?.enableDynamic = true
        // Moving down the menu view under navigation bar
        //    menu?.underNavigationBar = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialCustomMenu(.left)
        // Do any additional setup after loading the view.
    }
}
extension CustomNaivationViewController: LNSideMenuDelegate {
    
    func didSelectItemAtIndex(_ index: Int) {
        sideMenuManager?.toggleSideMenuView()
    }
}
