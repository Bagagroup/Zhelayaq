//
//  MenuViewController.swift
//  ZhelAyaq
//
//  Created by Baga on 25.07.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import UIKit
import Cartography

class MenuViewController: UIViewController {
    
    //111 logo
    private var logoImageView: UIImageView {
        let imageView = UIImageView()
        imageView.frame = CGRectMake(140, 70, 150, 150)
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 75
        imageView.backgroundColor = .redColor()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    
    
    //222 enter Button
    lazy var loginViewButton: UIButton = {
        let viewButton = UIButton()
        viewButton.setTitle("Войти", forState: UIControlState.Normal)
        viewButton.translatesAutoresizingMaskIntoConstraints = false
        viewButton.addTarget(self, action: #selector(transition(_:)), forControlEvents: .TouchUpInside)
        return viewButton
    }()
    //333 переход в LoginViewCOntroller
    func transition(Sender: UIButton!)
    {
        let loginViewController = LoginViewController()
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.window?.rootViewController = loginViewController
    }
    
    
    //444 My advirtisement admin panel
    lazy var myAddingButton: UIButton = {
        let button = UIButton()
        button.setTitle("Мои объявления", forState: UIControlState.Normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(transitionMyAdvertisment(_:)), forControlEvents: .TouchUpInside)
        return button
    }()
    //555 переход в myAdvirtisementViewController
    func transitionMyAdvertisment(Sender: UIButton!)
    {
        let loginViewController = LoginViewController()
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.window?.rootViewController = loginViewController
    }

    
    //222 adding Button
    lazy var addingAdvertiseButton: UIButton = {
        let addButton = UIButton()
        addButton.setTitle("Добавить", forState: UIControlState.Normal)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.addTarget(self, action: #selector(transitionAddSneaker(_:)), forControlEvents: .TouchUpInside)
        return addButton
    }()
    //333 переход в AddingSneakViewController
    func transitionAddSneaker(Sender: UIButton!)
    {
        let loginViewController = AddingSneakViewController()
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.window?.rootViewController = loginViewController
    }


    //444 выход
    func handleLogout() {
        let loginController = LoginViewController()
        presentViewController(loginController, animated: true, completion: nil)
    }

    //555 message Button
    private var messageViewButton: UIButton = {
        let messageButton = UIButton()
        messageButton.setTitle("Сообщения", forState: UIControlState.Normal)
        messageButton.translatesAutoresizingMaskIntoConstraints = false
        return messageButton
    }()
    
    //666 likes Button
    lazy var likesViewButton: UIButton = {
        let likeButton = UIButton()
        likeButton.setTitle("Понравивщиеся", forState: UIControlState.Normal)
        likeButton.translatesAutoresizingMaskIntoConstraints = false
        return likeButton
    }()
    
    
    // storyofpayment
    lazy var storyofPaymentButton: UIButton = {
        let storyButton = UIButton()
        storyButton.setTitle("История покупок", forState: UIControlState.Normal)
        storyButton.translatesAutoresizingMaskIntoConstraints = false
        storyButton.addTarget(self, action: #selector(transitionStoryofPayment(_:)), forControlEvents: .TouchUpInside)
        return storyButton
    }()
    //333 переход в storyofPaymentViewController
    func transitionStoryofPayment(Sender: UIButton!)
    {
        let loginViewController = AddingSneakViewController()
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        delegate.window?.rootViewController = loginViewController
    }
    
    
    //777 about App Button
    lazy var aboutAppViewButton: UIButton = {
        let aboutAppButton = UIButton()
        aboutAppButton.setTitle("О приложении", forState: UIControlState.Normal)
        aboutAppButton.titleLabel?.font = UIFont.boldSystemFontOfSize(12)
        return aboutAppButton
    }()

    lazy var setViewButton: UIButton = {
        let setButton = UIButton()
        setButton.setTitle("Настройки", forState: UIControlState.Normal)
        setButton.titleLabel?.font = UIFont.boldSystemFontOfSize(12)
        return setButton
    }()

    

    //888 View 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(logoImageView)
        view.addSubview(loginViewButton)
        view.addSubview(addingAdvertiseButton)
        view.addSubview(messageViewButton)
        view.addSubview(likesViewButton)
        view.addSubview(aboutAppViewButton)
        view.addSubview(myAddingButton)
        view.addSubview(storyofPaymentButton)
        view.addSubview(setViewButton)

        setupConstrainsofButton()
           }
    
   
    func setupConstrainsofButton () {
        constrain(loginViewButton){ loginViewButton  in
            loginViewButton.width == 80
            loginViewButton.height == 40
            loginViewButton.top == loginViewButton.superview!.top + 120
            loginViewButton.left == loginViewButton.superview!.left + 10
        }
        
        constrain(messageViewButton, likesViewButton, storyofPaymentButton, addingAdvertiseButton, myAddingButton) { messageViewButton, likesViewButton, storyofPaymentButton, addingAdvertiseButton, myAddingButton in
            messageViewButton.width == 150
            messageViewButton.height == 30
            likesViewButton.width == 150
            likesViewButton.height == 30
            addingAdvertiseButton.width == 100
            addingAdvertiseButton.height == 30
            myAddingButton.width == 150
            myAddingButton.height == 30
            storyofPaymentButton.width == 150
            storyofPaymentButton.height == 30
            myAddingButton.top == myAddingButton.superview!.top + 240
            myAddingButton.left == myAddingButton.superview!.left + 20
            addingAdvertiseButton.top == myAddingButton.top + 50
            addingAdvertiseButton.left == addingAdvertiseButton.superview!.left + 20
            messageViewButton.top == addingAdvertiseButton.top + 50
            messageViewButton.left == messageViewButton.superview!.left + 20
            likesViewButton.top == messageViewButton.top + 50
            likesViewButton.left == likesViewButton.superview!.left + 20
            storyofPaymentButton.top == likesViewButton.top + 50
            storyofPaymentButton.left == storyofPaymentButton.superview!.left + 20
        }
        constrain(aboutAppViewButton, storyofPaymentButton, setViewButton) { aboutAppViewButton, storyofPaymentButton,setViewButton in
            aboutAppViewButton.width == 100
            aboutAppViewButton.height == 20
            setViewButton.width == 100
            setViewButton.height == 20
            aboutAppViewButton.top == storyofPaymentButton.top + 60
            aboutAppViewButton.left == aboutAppViewButton.superview!.left + 10
            setViewButton.top == aboutAppViewButton.top + 30
            setViewButton.left == setViewButton.superview!.left + 10
        }
        
        UIView.animateWithDuration(0.5, animations: loginViewButton.layoutIfNeeded)
    }
}









