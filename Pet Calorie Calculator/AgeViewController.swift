//
//  AgeViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 23/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class AgeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func adult(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "condition") as! CondtionViewController
        vc.title = "Condition"
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
