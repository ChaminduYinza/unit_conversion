//
//  DistanceConversionController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/14/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import Foundation
class DistanceConversionController{
    var metre:Double = 0.0
    var foot:Double = 0.0
    var yard:Double = 0.0
    var kilometre:Double = 0.0
    var mile:Double = 0.0
    
    //Metre conversion
    func conversionMetre(_ metreValue:Double){
        self.foot = metreValue/0.3048
        self.yard = metreValue * 1.0936
        self.kilometre = metreValue / 1000.0
        self.mile = metreValue * 0.00062137
    }
    //Feet conversion
    func conversionFeet(_ footValue:Double){
        self.metre = footValue * 0.3048
        self.yard = footValue * 0.33333
        self.kilometre = footValue / 3280.8
        self.mile = footValue * 0.00018939
    }
    //Yard conversion
    func conversionYard(_ yardValue:Double){
        self.foot = yardValue * 3.0000
        self.metre = yardValue / 1.0936
        self.kilometre = yardValue * 0.0009144
        self.mile = yardValue * 0.00056818
    }
    
    //Kilometre conversion
    func conversionKilometre(_ kilometreValue:Double){
        self.foot = kilometreValue * 3280.8
        self.metre = kilometreValue / 0.0010000
        self.yard = kilometreValue * 1093.613298
        self.mile = kilometreValue / 1.609344
    }
    
    //Mile conversion
    func conversionMile(_ mileValue:Double){
        self.foot = mileValue * 5280.0
        self.metre = mileValue / 0.00062137
        self.yard = mileValue * 1760.0
        self.kilometre = mileValue * 1.609344
    }
    
}
