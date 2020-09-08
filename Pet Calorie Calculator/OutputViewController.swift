//
//  OutputViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 24/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class OutputViewController: UIViewController {

    public var rer:Double!
    
    
    @IBOutlet weak var output: UILabel!
    
    public var first_value:Double!
    public var second_value:Double!

    override func viewDidLoad() {
        super.viewDidLoad()
        let str:String = String(format: "%.1f",first_value * rer) + " - " + String(format: "%.1f",second_value * rer)
        output.text = str
        
        
    }
    
    
    @IBAction func finish(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    

}
