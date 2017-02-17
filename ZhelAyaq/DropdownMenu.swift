//
//  DropdownMenu.swift
//  ZhelAyaq
//
//  Created by Baga on 26.07.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import Foundation
import UIKit
import MKDropdownMenu

class DropdownMenu: UIViewController, MKDropdownMenuDataSource, MKDropdownMenuDelegate {

    var dropmenu = ["Мужской", "Женский", "Универсальный"]
    var dropdownMenu = MKDropdownMenu()
    
//    private var typeSneakSneakButton: UIButton {
//        let typeButton = UIButton()
//        let typeButton = MKDropdownMenuDelegate()
//        typeButton.frame = CGRectMake(10, 10, 15, 15)
//        typeButton.layer.masksToBounds = true
//        typeButton.backgroundColor = .blueColor()
//        typeButton.setTitle("Войти", forState: UIControlState.Normal)
//        typeButton.bounds = CGRect(x: 0, y:  0, width: 100, height: 60)
//        typeButton.center = CGPoint (x:100, y:100)
//        typeButton.delegate = self
//        typeButton.allowsEditing = true
//        
//        self.presentViewController(typeButton, animated: true, completion: nil)
//
//    }
    
    fileprivate var dropTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addSubview(typeSneakSneakButton)
        dropdownMenu.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 44)
        dropdownMenu.dataSource = self
        dropdownMenu.delegate = self
        view.addSubview(dropdownMenu)
          }
    
    //MKDropdownMenuDataSource datasource methods
    func numberOfComponents(in dropdownMenu: MKDropdownMenu) -> Int {
        return 1
    }
    
    func dropdownMenu(_ dropdownMenu: MKDropdownMenu, numberOfRowsInComponent component: Int) -> Int {
        return self.dropmenu.count
    }
    
    func dropdownMenu(_ dropdownMenu: MKDropdownMenu, didSelectRow row: Int, inComponent component: Int) {
        dropTextField.text = dropmenu[row]
    }
    
    func dropdownMenu(_ dropdownMenu: MKDropdownMenu, titleForRow row: Int, forComponent component: Int) -> String? {
        return dropmenu[row]
    }
}
