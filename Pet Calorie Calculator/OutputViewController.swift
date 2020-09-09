//
//  OutputViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 24/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class OutputViewController: UIViewController {
    public var foodName:String!
    
    public var foodCalorie:Double!
    public var rer:Double!
    
    @IBOutlet weak var dislayFood: UILabel!
    
    @IBOutlet weak var output: UILabel!
    
    public var first_value:Double!
    public var second_value:Double!

    override func viewDidLoad() {
        super.viewDidLoad()
        let str:String = String(format: "%.1f",first_value * rer) + " - " + String(format: "%.1f",second_value * rer)
        output.text = str
        if ((foodName ?? "" != "") || (foodCalorie ?? 0 != 0)){
            let num = first_value * rer / foodCalorie
            let num1 = second_value * rer / foodCalorie
            let str1:String = "It eats " + foodName + " for " + String(format: "%.1f", num) + "kg to " + String(format: "%.1f", num1) + " kg"
            dislayFood.text = str1
        }
        
    }
    
    
    @IBAction func finish(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    

}
