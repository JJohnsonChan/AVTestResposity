//
//  ViewController.swift
//  AVFRTest
//
//  Created by Johnson Chan on 2018/11/22.
//  Copyright © 2018 Johnson Chan. All rights reserved.
//

import UIKit
import LNSideMenu
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigation()
    }
    
    func initNavigation(){
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "white_drawer"), style: .plain, target: self, action: #selector(btnDrawerTapped))
    }

    
    @objc func btnDrawerTapped(){
        sideMenuManager?.toggleSideMenuView()
        print("drawer tapped")
    }

}

