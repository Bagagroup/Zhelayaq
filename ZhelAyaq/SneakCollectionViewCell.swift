//
//  SneakCollectionViewCell.swift
//  ZhelAyaq
//
//  Created by Baga on 25.07.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import Foundation
import UIKit
import Cartography

var imageView = [imageList]

class SneakCollectionViewCell: UICollectionViewCell {
    
    //111 - brandLabel
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Nike"
        return label
    }()
    
    //222 - sneakers imageView
    lazy var profileImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named:"images")

        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    //333 adding View
    func setupViews(){
        contentView.addSubview(profileImageView)              //contentView - в ячейку ставит
        contentView.addSubview(titleLabel)
        
        constrain(titleLabel) { titleLabel in
            titleLabel.width == 80
            titleLabel.height == 20
            titleLabel.bottom == titleLabel.superview!.bottom
        }
       constrain(profileImageView) { imageView in
        imageView.size == imageView.superview!.size             //superview - ячейка
        imageView.center == imageView.superview!.center
    
        }
    }
}


