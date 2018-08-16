//
//  TemperatureViewController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/9/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {
//Creating an object from TemperatureConversionController class
    var tc = TemperatureConversionController()
    @IBOutlet weak var kelvin: UITextField!
    @IBOutlet weak var fahrenheit: UITextField!
    @IBOutlet weak var celsius: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Calling the hideKeyboard function in ParentViewController (extension)
        self.hideKeyboard()
       
    }
    //this function will clear the text fields
    func clearText(){
        self.kelvin.text = ""
        self.fahrenheit.text = ""
        self.celsius.text = ""
    }
    //Calling cleartext function when celsius textfield is selected
    @IBAction func clickOnCelsius(_ sender: Any) {
        clearText()
    }
    //Calling cleartext function when fahrenheit textfield is selected
    @IBAction func clickOnFahrenheit(_ sender: Any) {
        clearText()
    }
    //Calling cleartext function when kelvin textfield is selected
    @IBAction func clickOnKelvin(_ sender: Any) {
        clearText()
    }
    
    //Calling conversionCelsius function in TemperatureConversionController class when value changed on celsius textfield
    @IBAction func valueChangeOnCelsius(_ sender: Any) {
            tc.conversionCelsius((self.celsius.text! as NSString).doubleValue)
            self.fahrenheit.text = String(tc.fahrenheit)
            self.kelvin.text = String(tc.kelvin)
        
    }
     //Calling conversionFahrenheit function in TemperatureConversionController class when value changed on fahrenheit textfield
    @IBAction func valueChangeOnFahrenheit(_ sender: Any) {
        tc.conversionFahrenheit((self.fahrenheit.text! as NSString).doubleValue)
        self.celsius.text = String(tc.celsius)
        self.kelvin.text = String(tc.kelvin)
    }
     //Calling conversionKelvin function in TemperatureConversionController class when value changed on kelvin textfield
    @IBAction func valueChangeOnKelvin(_ sender: Any) {
        tc.conversionKelvin((self.kelvin.text! as NSString).doubleValue)
        self.celsius.text = String(tc.celsius)
        self.fahrenheit.text = String(tc.fahrenheit)
    }
}
