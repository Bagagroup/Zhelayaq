//
//  ViewController.swift
//  ZhelAyaq
//
//  Created by Baga on 25.07.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import UIKit
import REFrostedViewController
import MKDropdownMenu

let identifier = "ProducerCell"                             //назначения identifier этому обьекту(классу и страничке) 

class ViewController: UIViewController {
    
    
    //111 UICollectionView создания layout of collectionView, отвечает за вид ячейки
    private lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .Vertical                                 //вертикально двигался
        layout.itemSize = CGSize(width: self.view.frame.width, height: 200)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        return layout
    }()
    
    
    //222 UICollectionView  подключения к главной страничке collectionView
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: self.layout)
        collectionView.registerClass(ProducerCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: identifier)
        collectionView.dataSource = self
        return collectionView
    }()
    
    
    
    //333 кнопка Menu for REFrostedViewController
    private lazy var menuBarButton: UIBarButtonItem = {
        let barButton = UIBarButtonItem()
        barButton.title = "Menu"
        barButton.target = self.frostedViewController
        barButton.action = #selector(REFrostedViewController.presentMenuViewController)
        return barButton
    }()
    
    
    //444 обращение к классу  Producer(swift), UICollectionView : - ?
    var producerList: [Producer] = []

    //555 отображение на экране
    override func viewDidLoad() {                                 //override - ?
        super.viewDidLoad()
        
        view.addSubview(collectionView)                           //для отображения в экране CollectionView
       
        collectionView.alwaysBounceVertical = true
        producerList = Producer.fetchProducer()                   //добавляется марки
        
        navigationItem.leftBarButtonItem = menuBarButton
        navigationItem.title = "Sneakers"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


//666 UICollectionView - dataSource methods, для отображения ячейек в форме таблице
extension ViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return producerList.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPath)
        cell.backgroundColor = [.redColor(), .blueColor(), .yellowColor()][indexPath.row % 3]
        return cell
    }
}












