//
//  TypeViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 23/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class TypeViewController: UIViewController {
    
    public var cat:Bool!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func catBotton(_ sender: Any) {
        cat = true
        let vc = storyboard?.instantiateViewController(identifier: "age") as! AgeViewController
        vc.title = "Age"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func dogBotton(_ sender: Any) {
        cat = false
        let vc = storyboard?.instantiateViewController(identifier: "age") as! AgeViewController
        vc.title = "Age"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
