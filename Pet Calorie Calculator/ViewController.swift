//
//  ViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 21/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var unit: UIPickerView!
    
    var pickerData:[String] = [String]()
    
    private var rer:RER!
    
    private var foodName:String!
    
    private var foodCalorie:Double!
    
    //number that contains the weight
    private var number:Double!
    
    //the units for unit UIPickerview
    private var units:Double = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.unit.delegate=self
        self.unit.dataSource=self
        pickerData = ["kg", "pounds"]
        
    }
    
    
    //check the input whether is numbers
    func isNumeber(_ input: String) -> Bool {
        let myDouble = Double(input) ?? 0
        number = myDouble * units
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
            vc.foodName = foodName
            vc.foodCalorie = foodCalorie
            navigationController?.pushViewController(vc, animated: true)        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView)-> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerData[row] == pickerData[1]){
            units = 0.453592
        }else{
            units = 1
        }
    }
    
    @IBAction func addingFood(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "food") as! AddingFoodViewController
        vc.title = "Adding Food"
        vc.addingDelegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController: AddingFoodDelegate{
    func didFoodData(food_name:String, food_calorie:Double){
        foodName = food_name
        foodCalorie = food_calorie
    }
}
