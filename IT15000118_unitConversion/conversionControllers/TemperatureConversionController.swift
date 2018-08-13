//
//  TemperatureConversionController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/13/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import Foundation

class TemperatureConversionController{
    var celsius:Double = 0.0
    var fahrenheit:Double = 0.0
    var kelvin:Double = 0.0
    
    //Celsius conversion
    func conversionCelsius(_ celsiusValue:Double){
        self.fahrenheit = (1.8 * celsiusValue/1) + 32
        self.kelvin = celsiusValue + 273.15
    }
    //Fahrenheit conversion
    func conversionFahrenheit(_ fahrenheitValue:Double){
        self.celsius = 5/9 * (fahrenheitValue - 32)
        self.kelvin = (fahrenheitValue + 459.67) * 5/9
    }
    //Kelvin conversion
    func conversionKelvin(_ kelvinValue:Double){
        self.celsius = kelvinValue - 273.15
        self.fahrenheit = 9/5 * (kelvinValue - 273.15) + 32
    }
    
}
