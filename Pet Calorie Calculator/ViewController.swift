//
//  ViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 21/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var weight: UITextField!
    
    
    public var rer:RER!
    
    //number that contains the weight
    public var number:Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        NotificationCenter.default.addObserver(self, selector: Selector(("keyboardWillShow:")), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: Selector(("keyboardWillHide:")), name: UIResponder.keyboardWillHideNotification, object: nil)
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cat_and_dog.jpg")!)
        assignbackground()
    }
    
    func assignbackground(){
        let background = UIImage(named: "cat_and_dog.jpg")

        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    
//    func keyboardWillShow(notification: NSNotification) {
//        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
//            self.view.frame.origin.y -= keyboardSize.height
//        }
//    }
//
//    func keyboardWillHide(notification: NSNotification) {
//        self.view.frame.origin.y = 0
//    }
//
    
    
    
    //check the input whether is numbers
    func isNumeber(_ input: String) -> Bool {
        let myDouble = Double(input) ?? 0
        number = myDouble
        if (myDouble == 0){
            return false
        }else{
            return true
        }
    }
    
    
    
    @IBAction func next(_ sender: Any) {
        if (!isNumeber(weight.text ?? "0")){
            let alert = UIAlertController(title: "Please enter the number", message: nil, preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

            self.present(alert, animated: true)
        }else{
            rer = RER(number)
            let vc = storyboard?.instantiateViewController(identifier: "type") as! TypeViewController
            vc.title = "Type"
            let num:Double = rer?.calculateRER() ?? 0
            vc.rer = num
            navigationController?.pushViewController(vc, animated: true)        }
    }
    

}

