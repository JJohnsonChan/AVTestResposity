//
//  PushViewController.swift
//  AVFRTest
//
//  Created by Johnson Chan on 2018/11/22.
//  Copyright © 2018 Johnson Chan. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {

    @IBOutlet weak var mTableView: UITableView!
    
    var items = Array<PushEventObject>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "通知 Event"
        for inedx in 0...5{
            let str = String(inedx)
            items.append(PushEventObject("title" + str, "subTitle" + str, str))
        }
        
        
        mTableView.dataSource = self
    }
}

extension PushViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pushTableCell", for: indexPath)
        if let title = cell.textLabel, let sub = cell.detailTextLabel{
            title.text = items[indexPath.row].title
            sub.text = items[indexPath.row].subTitle
        }
        return cell
    }
}

class PushEventObject{
    
    var title: String
    var subTitle: String
    var time: String
    
    init(_ title: String, _ sub: String, _ time: String) {
        self.title = title
        self.subTitle = sub
        self.time = time
    }
    
}
