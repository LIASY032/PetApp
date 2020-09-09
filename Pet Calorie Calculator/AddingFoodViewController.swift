//
//  AddingFoodViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 8/9/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

protocol AddingFoodDelegate {
    func didFoodData(food_name:String, food_calorie:Double)
}

class AddingFoodViewController: UIViewController {

    
    var addingDelegate:AddingFoodDelegate!
    
    @IBOutlet weak var foodName: UITextField!
    
    @IBOutlet weak var foodCalorie: UITextField!
    
    var number:Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    func isNumeber(_ input: String) -> Bool {
        let myDouble = Double(input) ?? 0
        number = myDouble
        if (myDouble == 0){
            return false
        }else{
            return true
        }
    }
    
    

    @IBAction func confirm(_ sender: Any) {
        if  ((!isNumeber(foodCalorie.text ?? "0")) || (!foodName.hasText)){
            let alert = UIAlertController(title: "Please enter the number and the name of the food", message: nil, preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

            self.present(alert, animated: true)
        }else{
            
            addingDelegate.didFoodData(food_name: foodName?.text ?? "", food_calorie: number)
            navigationController?.popToRootViewController(animated: true)
        }
    }
    

}
