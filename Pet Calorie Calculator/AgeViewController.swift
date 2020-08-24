//
//  AgeViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 23/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class AgeViewController: UIViewController {
    
    public var rer:Double!
    public var cat:Bool!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func adult(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "condition") as! CondtionViewController
        vc.title = "Condition"
        vc.rer = rer
        vc.cat = cat
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func young(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "output") as! OutputViewController
        vc.title = "Output"
        vc.rer = rer
        vc.first_value = 2.5
        vc.second_value = 2.5
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
