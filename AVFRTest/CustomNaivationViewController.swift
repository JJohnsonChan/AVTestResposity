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
        menu?.enableDynamic = true
        vc.delegate = self
        // Moving down the menu view under navigation bar
        //    menu?.underNavigationBar = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialCustomMenu(.left)
        // Do any additional setup after loading the view.
    }
}

extension CustomNaivationViewController: LeftMenuDelegate {
    func didSelectItemAtIndex(_ index: Int) {
        sideMenuManager?.toggleSideMenuView()
        switch index {
        case 0:
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MediaViewController") as! MediaViewController
            self.pushViewController(vc, animated: false)
        case 1:
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AppSettingViewController") as! AppSettingViewController
            self.pushViewController(vc, animated: false)
        case 2:
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
            self.pushViewController(vc, animated: false)
            return
        case 3:
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HelpViewController") as! HelpViewController
            self.pushViewController(vc, animated: false)
        default:
            break
        }
        
    }
}

