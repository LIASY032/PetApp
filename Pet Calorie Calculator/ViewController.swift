//
//  ViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 21/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weight: UITextField!
    
    
    public var rer:RER!
    
    //number that contains the weight
    public var number:Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        if (isNumeber(weight.text ?? "0")){
            
            rer = RER(number)
        }else {
            if (rer != nil){
                
            }
        }
        
    }
    
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
            let vc = storyboard?.instantiateViewController(identifier: "type") as! TypeViewController
            vc.title = "Type"
            navigationController?.pushViewController(vc, animated: true)        }
    }
    

}

