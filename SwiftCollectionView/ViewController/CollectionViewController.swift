//
//  CollectionViewController.swift
//  SwiftCollectionView
//
//  Created by Azuma on 2018/04/30.
//  Copyright © 2018年 Azuma. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var colors: [Color] = []
    var color: Color?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.configure(color: colors[indexPath.item])
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        color = colors[indexPath.item]
        performSegue(withIdentifier: "ColorSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ColorSegue" {
            let vc = segue.destination as? ViewController
            vc?.color = color!
        }
    }

}
