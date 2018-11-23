//
//  StreamCollectionViewCell.swift
//  AVFRTest
//
//  Created by Johnson Chan on 2018/11/23.
//  Copyright © 2018 Johnson Chan. All rights reserved.
//

import UIKit

class StreamCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var labelStreamNo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setLabelText(str: String){
        labelStreamNo.text = str
    }
}
