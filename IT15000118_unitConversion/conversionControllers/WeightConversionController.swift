//
//  WeightConversionController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/12/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import Foundation
class WeightConversionController{
    
    var gram:Double = 0.0
    var kilogram:Double = 0.0
    var pound:Double = 0.0
    var ounce:Double = 0.0
    
    
    func conversionGram(_ gram:Double){
        self.kilogram = (0.001/1)*gram
        self.pound = (0.00220462/1)*gram
        self.ounce = (0.035274/1)*gram      
        
    }
    func conversionKilogram(_ kilogram:Double){
        
    }
    func conversionPound(_ pound:Double){
        
    }
    func conversionOunce(_ ounce:Double){
        
    }
    
}

