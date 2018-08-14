//
//  SpeedConversionController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/14/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import Foundation

class SpeedConversionController{
    var metre:Double = 0.0
    var feet:Double = 0.0
    var kilometre:Double = 0.0
    var miles:Double = 0.0
    
    
    //Metre per sec conversion
    func conversionMetre(_ metrePerSecValue:Double){
        self.feet = metrePerSecValue * 196.850394
        self.kilometre = (metrePerSecValue * 18) / 5
        self.miles = metrePerSecValue * 2.236936
        
    }
    //Feet per minute conversion
    func conversionFeet(_ feetValuePerMinuteValue:Double){
        self.metre = feetValuePerMinuteValue * 0.00508
        self.kilometre = feetValuePerMinuteValue * 0.018288
        self.miles = feetValuePerMinuteValue * 0.01136363637
    }
    
    //Kilometre per hour conversion
    func conversionKilometre(_ kilometrePerHourValue:Double){
        self.feet = kilometrePerHourValue * 54.6806649
        self.metre = (kilometrePerHourValue * 5) / 18
        self.miles = (0.62137 * kilometrePerHourValue)
    }
    
    //Miles per hour conversion
    func conversionMile(_ milesPerHourValue:Double){
        self.feet = (milesPerHourValue * 5280) / 3600
        self.kilometre = milesPerHourValue * 1.609344
        self.metre = milesPerHourValue * 0.44704
    }
    
}
