//
//  TypeViewController.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 23/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import UIKit

class TypeViewController: UIViewController {
    public var foodName:String!
    
    public var foodCalorie:Double!
    public var rer:Double!
    public var cat:Bool!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    @IBAction func catBotton(_ sender: Any) {
        cat = true
        move_next()
    }
    
    
    @IBAction func dogBotton(_ sender: Any) {
        cat = false
        move_next()
    }
    
    func move_next(){
        let vc = storyboard?.instantiateViewController(identifier: "age") as! AgeViewController
        vc.title = "Age"
        vc.rer = rer
        vc.cat = cat
        vc.foodCalorie = foodCalorie
        vc.foodName = foodName
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
