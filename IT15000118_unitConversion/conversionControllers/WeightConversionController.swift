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
    
    //Gram conversion
    func conversionGram(_ gramValue:Double){
        self.kilogram = (0.001/1) * gramValue
        self.pound = (0.00220462/1) * gramValue
        self.ounce = (0.035274/1) * gramValue
        
    }
    //Kilogram conversion
    func conversionKilogram(_ kilogramValue:Double){
        self.gram = (1000/1) * kilogramValue
        self.ounce = (35.274/1) * kilogramValue
        self.pound = (2.20462/1) * kilogramValue
        
    }
    
    //Pound conversion
    func conversionPound(_ poundValue:Double){
        self.gram = (453.592/1) * poundValue
        self.ounce = (16/1) * poundValue
        self.kilogram = (0.453592/1) * poundValue
        
    }
    
    //Oucne conversion
    func conversionOunce(_ ounceValue:Double){
        self.gram = (28.3495/1) * ounceValue
        self.pound = (0.0625/1) * ounceValue
        self.kilogram = (0.0283495/1) * ounceValue
        
    }
    
}

