//
//  ViewController.swift
//  AVFRTest
//
//  Created by Johnson Chan on 2018/11/22.
//  Copyright © 2018 Johnson Chan. All rights reserved.
//

import UIKit
import Foundation
import LNSideMenu
class ViewController: UIViewController {

    @IBOutlet weak var mCollectionView: UICollectionView!
    
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    let leftSpace: CGFloat = 15
    let rightSpace: CGFloat = 15
    let cellSpace: CGFloat = 1
    
    var cellInRows: CGFloat = 1
    
    var itemWidth: CGFloat {
        return ((screenWidth - leftSpace - rightSpace - cellSpace * (cellInRows - 1))/cellInRows)
    }
    
    var mCollectionLayout: UICollectionViewFlowLayout {
        return mCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mCollectionView.dataSource = self
        mCollectionView.register(StreamCollectionViewCell.self, forCellWithReuseIdentifier: "StreamCollectionCell")
        
        mCollectionLayout.minimumInteritemSpacing = cellSpace
        mCollectionLayout.sectionInset = UIEdgeInsets(top: 0, left: leftSpace, bottom: 0, right: rightSpace)
        mCollectionLayout.itemSize = CGSize(width: itemWidth, height: itemWidth)
    }
    @IBAction func btnPress(_ sender: UIButton) {
        cellInRows = cellInRows.truncatingRemainder(dividingBy: 4) + 1
        mCollectionLayout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        mCollectionView.collectionViewLayout.invalidateLayout()
    }
    
}
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StreamCollectionCell", for: indexPath) as! StreamCollectionViewCell
        cell.setLabelText(str: "\(indexPath.row)")
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    
}

