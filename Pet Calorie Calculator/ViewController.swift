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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if ()
        
    }
    
    func isLetter(_ input: String) -> Bool {
        let myDouble = Double(input) ?? 0
        if (myDouble == 0){
            return false
        }else{
            return true
        }
    }
    
    
    

}

