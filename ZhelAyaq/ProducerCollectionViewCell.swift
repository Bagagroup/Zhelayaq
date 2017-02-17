//
//  ProducerCollectionViewCell.swift
//  ZhelAyaq
//
//  Created by Baga on 25.07.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import Foundation
import UIKit


class ProducerCollectionViewCell: UICollectionViewCell {
    
    let titleLabel = UILabel()
        
    var sneakPost = [Post]()
    
    //111 UIColectionView layout двигается горизантально, отвечает за вид ячейки
    fileprivate lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal                                //горизантально двигался 
        layout.itemSize = CGSize(width: self.contentView.frame.height, height: self.contentView.frame.height)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        return layout
    }()
    
    //222 UICollectionVIew подключения collectionVIew
    fileprivate lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: self.contentView.frame, collectionViewLayout: self.layout)
        collectionView.register(SneakCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: identifier)
        collectionView.dataSource = self
        return collectionView
    }()
    
    
    
    //333 for View
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews() {
        self.backgroundColor = UIColor.white
     //   addSubview(titleLabel)
        addSubview(collectionView)
    }
}

//444 UICollectionView  methods
extension ProducerCollectionViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! SneakCollectionViewCell
       
    //    cell.profileImageView.loadImageFromURLString(self.sneakPost[indexPath.section].imageUrl!, placeholderImage: UIImage(named: "placeholder"), completion: nil)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
