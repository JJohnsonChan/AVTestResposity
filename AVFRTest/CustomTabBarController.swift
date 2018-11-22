//
//  CustomTabBarController.swift
//  AVFRTest
//
//  Created by Johnson Chan on 2018/11/22.
//  Copyright © 2018 Johnson Chan. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initTabBarItems()
    }
    

    private func initTabBarItems() {
        
        if let items = tabBar.items{
            for (index, item) in items.enumerated(){
                switch index{
                case 0:
                    item.title = "Preview"
                    item.image =
                        UIImage(named: "icon_music_normal")?.withRenderingMode(.alwaysOriginal)
                    item.selectedImage =
                        UIImage(named: "icon_music_selected")?.withRenderingMode(.alwaysOriginal)
                case 1:
                    item.title = "Event"
                    item.image =
                        UIImage(named: "icon_skill_normal")?.withRenderingMode(.alwaysOriginal)
                    item.selectedImage =
                        UIImage(named: "icon_skill_selected")?.withRenderingMode(.alwaysOriginal)
                default:
                    break
                }
            }
        }
    }
}
