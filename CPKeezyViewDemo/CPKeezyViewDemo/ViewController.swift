//
//  ViewController.swift
//  CPKeezyViewDemo
//
//  Created by Parsifal on 2017/1/25.
//  Copyright © 2017年 Parsifal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    let cellIdentified = "CollectionViewCell"
    var colorsArray = [UIColor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorsArray.append(UIColor(246, 89, 61, 1.0))
        colorsArray.append(UIColor(246, 211, 118, 1.0))
        colorsArray.append(UIColor(142, 246, 193, 1.0))
        colorsArray.append(UIColor(183, 206, 123, 1.0))
        colorsArray.append(UIColor(248, 166, 67, 1.0))
        colorsArray.append(UIColor(247, 105, 131, 1.0))
        colorsArray.append(UIColor(190, 115, 196, 1.0))
        colorsArray.append(UIColor(116, 241, 160, 1.0))
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentified, for: indexPath)
        let btn = cell.viewWithTag(100)
        btn?.backgroundColor = colorsArray[indexPath.row]
        return cell
    }
}

extension UIColor {
    convenience init(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
}
