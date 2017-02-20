//
//  AppDelegate.swift
//  ZhelAyaq
//
//  Created by Baga on 25.07.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import UIKit
import REFrostedViewController
import MKDropdownMenu

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    let APP_ID = "C6509D3F-1045-8EB2-FFE2-533D40F57500"
    let SECRET_KEY = "6C41E533-13EF-D6FC-FF52-61BA42B63000"
    let VERSION_NUM = "v1"
    
    var backendless = Backendless.sharedInstance()

    
    var window: UIWindow?

//REFrostedViewController
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let homeViewController = UINavigationController(rootViewController: ViewController()) //создания navigationBar
        let menuViewController = MenuViewController()                                //swift файл ManuViewController
        let frostedViewController = REFrostedViewController(contentViewController: homeViewController, menuViewController: menuViewController)                                                     //создания слайда
        
     
        let backViewController = UINavigationController(rootViewController: AddingSneakViewController())
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        window?.rootViewController = frostedViewController
        
       
        application.statusBarStyle = .lightContent
        
        UINavigationBar.appearance().tintColor = UIColor(red: 51/125, green: 90/255, blue: 149/255, alpha: 1)
        
        backendless?.initApp(APP_ID, secret:SECRET_KEY, version:VERSION_NUM)
        
        return true
    }

}

