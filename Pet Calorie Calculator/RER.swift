//
//  RER.swift
//  Pet Calorie Calculator
//
//  Created by Fan Liang on 21/8/20.
//  Copyright © 2020 Fan Liang. All rights reserved.
//

import Foundation
import UIKit

class RER {
    //A constant value that is needed to multiple the weight
    private let value:Int = 70
    
    //store a weight
    private var weight:Double!
    
//    //the condition that detects a cat/dog was neutered
//    private var neutered:Bool!
//
//    //the condition that detects a cat/dog was adult
//    private var adult:Bool!
//
//    //the condition for species
//    private var species:Bool!
    
    init(_ weight:Double){
        self.weight = weight
    }
    
    func calculateRER() ->Double {
        return Double(value) * pow(weight, 0.75)
    }
    
    func calculateMER(number:Double) ->Double {
        return number * calculateRER()
    }
    
}



