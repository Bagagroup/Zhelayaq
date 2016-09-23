//
//  AddingSneakViewController.swift
//  ZhelAyaq
//
//  Created by Baga on 05.08.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import UIKit
import Cartography
import KFSwiftImageLoader

let identifierAddingSneak = "AddingSneakCell "

class AddingSneakViewController: UIViewController {
    
    
    
    let menuViewController = MenuViewController()
    
    
    //333 кнопка Back
    private lazy var menuBarButton: UIBarButtonItem = {
        let barButton = UIBarButtonItem()
        barButton.title = "Back"
        barButton.target = self
        barButton.action = #selector(MenuViewController.presentViewController(_:animated:completion:))
        return barButton
    }()
    
    //111 CollectionFlowLayout
    lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .Horizontal                                 //вертикально двигался
        layout.itemSize = CGSize(width: 150, height: 150)
      //  layout.minimumInteritemSpacing = 0
      //  layout.minimumLineSpacing = 0
        return layout
    }()
    
    
   //222 UICollectionView  подключения к главной страничке collectionView
     lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.layout)
        collectionView.registerClass(addingSneakcell.self, forCellWithReuseIdentifier: identifierAddingSneak.self)    //? classForCoder
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()

    

//111 - buttonViews  
    /*
    lazy var addingSneakButton: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("Добавить", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedAddingButton), forControlEvents: .TouchUpInside)
        return button
    }()
    func pressedAddingButton (sender:UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .PhotoLibrary
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
 */
    
    lazy var size36Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("36", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size37Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("37", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size38Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("38", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size39Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("39", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size40Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor.whiteColor()
        button.setTitle("40", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size41Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("41", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size42Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("42", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size43Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("43", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size44Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("44", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    lazy var size45Button: UIButton = {
        let button = UIButton(type:.System)
        button.backgroundColor = UIColor.whiteColor()
        button.setTitle("45", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.addTarget(self, action: #selector(pressedSizeButton), forControlEvents: .TouchUpInside)
        return button
    }()
    
    func pressedSizeButton (sender:UIButton) {
        
    }

    

    let priceTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Цена"
        return textField
    }()
    
    let descriptionTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Описание"
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        view.backgroundColor = UIColor(red: 61/255, green: 91/255, blue: 151/255, alpha: 1)
        
   //     view.addSubview(addingSneakButton)                         // В inputsConteinerView - добавили
        view.addSubview(priceTextField)
        view.addSubview(descriptionTextField)
        view.addSubview(size36Button)
        view.addSubview(size37Button)
        view.addSubview(size38Button)
        view.addSubview(size39Button)
        view.addSubview(size40Button)
        view.addSubview(size41Button)
        view.addSubview(size42Button)
        view.addSubview(size43Button)
        view.addSubview(size44Button)
        view.addSubview(size45Button)
        view.addSubview(collectionView)
        
        
  //      let homeViewController = UINavigationController(rootViewController: AddingSneakViewController())
  //      let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
  //      delegate.window?.rootViewController = homeViewController

        navigationItem.leftBarButtonItem = menuBarButton
       

        setupConstrainofButtons()
    }
    
    // constrains
    func setupConstrainofButtons() {
      /*  constrain(addingSneakButton) { addingSneakButton in
            addingSneakButton.width == 100
            addingSneakButton.height == 100
            addingSneakButton.top == addingSneakButton.superview!.top + 100
            addingSneakButton.left == addingSneakButton.superview!.left + 150
        }
    */
        
        constrain(priceTextField, descriptionTextField, collectionView) { priceTextField,descriptionTextField, collectionView in
            priceTextField.width == 100
            priceTextField.height == 30
            descriptionTextField.width == 100
            descriptionTextField.height == 30
            priceTextField.top == collectionView.bottom + 150
            priceTextField.left == priceTextField.superview!.left + 150
            descriptionTextField.top == priceTextField.bottom + 50
            descriptionTextField.left == descriptionTextField.superview!.left + 150
    }
        constrain(size36Button,size37Button,size38Button,size39Button,size40Button){ size36Button,size37Button,size38Button,size39Button,size40Button in
            size36Button.width == 60
            size36Button.height == 40
            size37Button.width == 60
            size37Button.height == 40
            size38Button.width == 60
            size38Button.height == 40
            size39Button.width == 60
            size39Button.height == 40
            size40Button.width == 60
            size40Button.height == 40
            size36Button.top == size36Button.superview!.top + 220
            size36Button.left == size36Button.superview!.left + 20
            size37Button.top == size37Button.superview!.top + 220
            size37Button.left == size36Button.right + 20
            size38Button.top == size38Button.superview!.top + 220
            size38Button.left == size37Button.right + 20
            size39Button.top == size39Button.superview!.top + 220
            size39Button.left == size38Button.right + 20
            size40Button.top == size40Button.superview!.top + 220
            size40Button.left == size39Button.right + 20
        }
        constrain(size41Button,size42Button,size43Button,size44Button,size45Button){ size41Button,size42Button,size43Button,size44Button,size45Button in
            size41Button.width == 60
            size41Button.height == 40
            size42Button.width == 60
            size42Button.height == 40
            size43Button.width == 60
            size43Button.height == 40
            size44Button.width == 60
            size44Button.height == 40
            size45Button.width == 60
            size45Button.height == 40
            size41Button.top == size41Button.superview!.top + 270
            size41Button.left == size41Button.superview!.left + 20
            size42Button.top == size42Button.superview!.top + 270
            size42Button.left == size41Button.right + 20
            size43Button.top == size43Button.superview!.top + 270
            size43Button.left == size42Button.right + 20
            size44Button.top == size44Button.superview!.top + 270
            size44Button.left == size43Button.right + 20
            size45Button.top == size45Button.superview!.top + 270
            size45Button.left == size44Button.right + 20
        }

        constrain(collectionView) { collectionView in
            collectionView.width == collectionView.superview!.width
            collectionView.height == 150
            collectionView.top == collectionView.superview!.top + 30
            
        }
    }
}


class addingSneakcell: UICollectionViewCell {

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .ScaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews(){
        contentView.addSubview(imageView)
        
        constrain(imageView) { imageView in
            imageView.size == imageView.superview!.size             //superview - ячейка
            imageView.center == imageView.superview!.center
        }
    }
}

var imageList: [UIImage] = []

extension AddingSneakViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count + 1
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(identifierAddingSneak, forIndexPath: indexPath) as! addingSneakcell
        
        cell.imageView.image = UIImage (named:"photoAdd")
        
        if indexPath.row < imageList.count {
            cell.imageView.image = imageList[indexPath.row]
        }
        cell.backgroundColor = .whiteColor()
        cell.contentView.backgroundColor = .whiteColor()
        
    
        
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row >= imageList.count {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .PhotoLibrary
            imagePicker.delegate = self
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }
    }
}
extension AddingSneakViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
          imageList.append(image)
            
         let data = UIImageJPEGRepresentation(image, 0.5)
            
         let fileName = "\(Backendless.sharedInstance().userService.currentUser.objectId)\(NSDate().timeIntervalSince1970).jpeg"
            
         Backendless.sharedInstance().fileService.upload(fileName, content: data, response: { (file: BackendlessFile!) in
                //code
                print("file url: \(file.fileURL)")
                
                self.saveUserAsync(file.fileURL)          //передаем вниз saveUserAsync
                
                })
            { (error: Fault!) in
                print("Server error \(error)")
            }
            

            
        }
        collectionView.reloadData()
        picker.dismissViewControllerAnimated(true, completion: nil)
       
       
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController){
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    func saveUserAsync (imageUrl: String) {                     //сохраяем данные user
        let user = Backendless.sharedInstance().userService.currentUser       //пока локально
        user.setProperty("profileUrl", object: imageUrl)
        
        let dataStore = Backendless.sharedInstance().data.of(BackendlessUser.ofClass())  //сохраняем в Backendless
        dataStore.save(user, response: { (result: AnyObject!) in                     //в result ? что передается
            let object = result as! BackendlessUser                                  //конв. в Backendless
            print("user has been updated\(object.objectId)")
            
            // self.performSegueWithIdentifier("SegueFeed", sender: nil)
            
        }) { (error: Fault!) in
            print("Server error \(error)")
        }
    }

}

