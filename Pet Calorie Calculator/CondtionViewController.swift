//
//  CondtionViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 23/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class CondtionViewController: UIViewController {
    
    
    public var value:Double!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func hospitalized(_ sender: Any) {
        
    }
    
    
    @IBAction func obese(_ sender: Any) {
        value = 1
    }
    
    
    @IBAction func inactive(_ sender: Any) {
        value = 1.3
    }
    
    
    @IBAction func neutered(_ sender: Any) {
    }
    
    
    @IBAction func intact(_ sender: Any) {
    }
    
    
    @IBAction func lactation(_ sender: Any) {
    }
    
    
    @IBAction func gestation(_ sender: Any) {
    }
    
    

}
