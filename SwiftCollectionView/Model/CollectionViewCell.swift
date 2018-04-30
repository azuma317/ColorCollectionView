//
//  CollectionViewCell.swift
//  SwiftCollectionView
//
//  Created by Azuma on 2018/04/30.
//  Copyright © 2018年 Azuma. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var hex: UILabel!
    
    func configure(color: Color) {
        self.name.text = color.name
        self.hex.text = "Hex:" + color.hex!
        self.color.backgroundColor = UIColor(red: CGFloat(color.r!)/255, green: CGFloat(color.g!)/255, blue: CGFloat(color.b!)/255, alpha: 1.0)
    }
}
