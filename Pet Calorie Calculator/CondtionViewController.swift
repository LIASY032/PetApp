//
//  CondtionViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 23/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class CondtionViewController: UIViewController {
    public var rer:Double!
    public var cat:Bool!
    public var foodName:String!
    
    public var foodCalorie:Double!
    
    
    
    public var first_value:Double!
    public var second_value:Double!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func hospitalized(_ sender: Any) {
        first_value = 1
        second_value = 1
        move_next()
    }
    
    
    @IBAction func obese(_ sender: Any) {
        if (cat){
            first_value = 0.8
            second_value = 1
        }else {
            first_value = 1
            second_value = 1
        }
        move_next()
    }
    
    
    @IBAction func inactive(_ sender: Any) {
        if (cat){
            first_value = 1
            second_value = 1
        }else {
            first_value = 1.2
            second_value = 1.4
        }
        move_next()
    }
    
    
    @IBAction func neutered(_ sender: Any) {
        if (cat){
            first_value = 1.2
            second_value = 1.2
        }else {
            first_value = 1.6
            second_value = 1.6
        }
        move_next()
    }
    
    
    @IBAction func intact(_ sender: Any) {
        if (cat){
            first_value = 1.4
            second_value = 1.4
        }else {
            first_value = 1.8
            second_value = 1.8
        }
        move_next()
    }
    
    
    @IBAction func lactation(_ sender: Any) {
        first_value = 2
        second_value = 6
        move_next()
    }
    
    
    @IBAction func gestation(_ sender: Any) {
        if (cat){
            first_value = 2
            second_value = 3
        }else {
            first_value = 1.6
            second_value = 2
        }
        move_next()
    }
    
    func move_next(){
        let vc = storyboard?.instantiateViewController(identifier: "output") as! OutputViewController
        vc.title = "Output"
        vc.rer = rer
        vc.first_value = first_value
        vc.second_value = second_value
        vc.foodName = foodName
        vc.foodCalorie = foodCalorie
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
