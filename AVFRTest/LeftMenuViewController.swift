//
//  LeftMenuViewController.swift
//  AVFRTest
//
//  Created by Johnson Chan on 2018/11/22.
//  Copyright © 2018 Johnson Chan. All rights reserved.
//

import UIKit

protocol LeftMenuDelegate: class {
    func didSelectItemAtIndex(_ index: Int)
}

class LeftMenuViewController: UIViewController {
    
    @IBOutlet weak var mTableView: UITableView!
    
    var tableItems = Array<String>()
    weak var delegate: LeftMenuDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        mTableView.delegate = self
        mTableView.dataSource = self
        
        tableItems.append("媒體")
        tableItems.append("設定")
        tableItems.append("關於")
        tableItems.append("幫助")
    }

}
extension LeftMenuViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let delegate = delegate {
            delegate.didSelectItemAtIndex(indexPath.row)
        }
        /*sideMenuManager?.toggleSideMenuView()
        print("naivagation controller \(self.navigationController)")
//        var vc: ViewController?
        switch indexPath.row {
        case 0:
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MediaViewController") as! MediaViewController
            self.navigationController?.pushViewController(vc, animated: false)
        case 1:
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AppSettingViewController") as! AppSettingViewController
            self.navigationController?.pushViewController(vc, animated: false)
//        case 2:
//            let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
//            self.navigationController?.pushViewController(vc1, animated: false)
//            return
//        case 3:
//            vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HelpViewController") as? ViewController
        default:
            break
        }*/
    }
}
extension LeftMenuViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "drawerViewCell", for: indexPath)
        if let title = cell.textLabel{
            title.text = tableItems[indexPath.row]
        }
        return cell
    }
}
