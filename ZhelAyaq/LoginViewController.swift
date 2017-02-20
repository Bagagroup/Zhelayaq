//
//  LoginViewController.swift
//  ZhelAyaq
//
//  Created by Baga on 03.08.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import UIKit
import Cartography
import REFrostedViewController
//import Backendless

class LoginViewController: UIViewController {

    let inputsConteinerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    lazy var loginEnterButton: UIButton = {
        let button = UIButton(type:.system)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("Войти", for: UIControlState())
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.addTarget(self, action: #selector(pressedLogin), for: .touchUpInside)
        return button
    }()
    func pressedLogin (_ sender:UIButton) {
        guard let _ = emailTextField.text, let _ = passwordTextField.text
            else { print("Form is not Valid")
                return
        }
        loginUserAsync(nameTextField.text!, email: emailTextField.text!, password: passwordTextField.text!)
    }

    
    
    lazy var loginRegisterButton: UIButton = {
        let button = UIButton(type:.system)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("Register", for: UIControlState())
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.addTarget(self, action: #selector(pressedRegister), for: .touchUpInside)
        return button
    }()
    func pressedRegister (_ sender:UIButton) {
        guard let _ = emailTextField.text, let _ = passwordTextField.text
            else { print("Form is not Valid")
                return
        }
        registerUserAsync(nameTextField.text!, email: emailTextField.text!, password: passwordTextField.text!)
    }
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Name"
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        view.backgroundColor = UIColor(red: 61/255, green: 91/255, blue: 151/255, alpha: 1)
        view.addSubview(inputsConteinerView)
        view.addSubview(loginRegisterButton)
        view.addSubview(loginEnterButton)
        inputsConteinerView.addSubview(nameTextField)                // В inputsConteinerView - supetview
        inputsConteinerView.addSubview(emailTextField)
        inputsConteinerView.addSubview(passwordTextField)
        inputsConteinerView.addSubview(separatorView)
        
        
        setupConstrainofButtons()
    }
    
    //222 constrains
    func setupConstrainofButtons() {
        constrain(loginEnterButton, loginRegisterButton) {loginEnterButton, loginRegisterButton in
            loginRegisterButton.width == 350
            loginRegisterButton.height == 40
            loginEnterButton.width == 350
            loginEnterButton.height == 40
            loginEnterButton.bottom == loginEnterButton.superview!.bottom - 220
            loginEnterButton.left == loginEnterButton.superview!.left + 32
            loginRegisterButton.left == loginRegisterButton.superview!.left + 32
            loginEnterButton.bottom == loginRegisterButton.top - 10
        }
        constrain(inputsConteinerView) { inputsConteinerView in
            inputsConteinerView.width == 350
            inputsConteinerView.height == 150
            inputsConteinerView.bottom == inputsConteinerView.superview!.bottom - 270
            inputsConteinerView.left == inputsConteinerView.superview!.left + 32
        }
        
        constrain(nameTextField) { nameTextField in
            nameTextField.height == 50
            nameTextField.width == 350
            nameTextField.top == nameTextField.superview!.top
            nameTextField.right == nameTextField.superview!.right + 10
        }
        constrain(emailTextField) { emailTextField in
            emailTextField.height == 50
            emailTextField.width == 350
            emailTextField.center == emailTextField.superview!.center
            emailTextField.right == emailTextField.superview!.right + 10
        }
        constrain(passwordTextField) { passwordTextField in
            passwordTextField.height == 50
            passwordTextField.width == 350
            passwordTextField.bottom == passwordTextField.superview!.bottom
            passwordTextField.right == passwordTextField.superview!.right + 10
            
        }
    }

    
    
    
    //333 register User
    func registerUserAsync(_ name: String, email:String, password:String) {
        
        let user = BackendlessUser()
        user.name = name as NSString
        user.email = email as NSString!
        user.password = password as NSString!
        
        Backendless.sharedInstance().userService.registering(user, response: { (registeredUser : BackendlessUser?) -> Void in
            print("User has been registered (ASYNC): \(registeredUser)")
            
             self.loginUserAsync(name, email: email, password: password)                      //после регистрации авторизуем
            },
            error: { ( fault : Fault?) -> Void in
                
            print("Server reported an error: \(fault)")
            }
        )
    }
    func loginUserAsync(_ name: String, email:String, password:String) {
        
        Backendless.sharedInstance().userService.login(email, password: password, response: { ( user : BackendlessUser?) -> Void in
            
            print("User has been logged in (ASYNC): \(user)")
                                                        
        //    self.performSegueWithIdentifier("SegueProfile", sender: nil)                   //после входа пропускаем в профайл
            
            let homeViewController = UINavigationController(rootViewController: ViewController()) //создания navigationBar
            let menuViewController = MenuViewController()                                //swift файл ManuViewController
            let frostedViewController = REFrostedViewController(contentViewController: homeViewController, menuViewController: menuViewController)
            let delegate = UIApplication.shared.delegate as! AppDelegate
            delegate.window?.rootViewController = frostedViewController
            },
                                                       
            error: { ( fault : Fault?) -> Void in
                
            print("Server reported an error: \(fault)")
            }
        )
    }
}

