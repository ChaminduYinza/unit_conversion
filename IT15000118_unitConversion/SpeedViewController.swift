//
//  SpeedViewController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/9/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {
    //Creating an object from SpeedConversionController class
    var sc = SpeedConversionController()
    
    @IBOutlet weak var milesPerHour: UITextField!
    @IBOutlet weak var kilometrePerHour: UITextField!
    @IBOutlet weak var feetPerMin: UITextField!
    @IBOutlet weak var metrePerSec: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Calling the hideKeyboard function in ParentViewController (extension)
        self.hideKeyboard() 
        }
    //this function will clear the text fields
    func clearText(){
        self.milesPerHour.text = ""
        self.kilometrePerHour.text = ""
        self.metrePerSec.text = ""
        self.feetPerMin.text = ""
    }
    //Calling cleartext function when metrePerSec textfield is selected
    @IBAction func clickOnMetre(_ sender: Any) {
        clearText()
    }
    //Calling cleartext function when feetPerMin textfield is selected
    @IBAction func clickOnFeet(_ sender: Any) {
        clearText()
    }
    //Calling cleartext function when kilometrePerHour textfield is selected
    @IBAction func clickOnKilometre(_ sender: Any) {
        clearText()
    }
    //Calling cleartext function when milesPerHour textfield is selected
    @IBAction func clickOnMiles(_ sender: Any) {
        clearText()
    }
    
     //Calling conversionMetre function in SpeedConversionController class when value changed on metrePerSec textfield
    @IBAction func valueChangeOnMetrePerSec(_ sender: Any) {
        sc.conversionMetre((self.metrePerSec.text! as NSString).doubleValue)
        self.kilometrePerHour.text = String(sc.kilometre)
        self.feetPerMin.text = String(sc.feet)
        self.milesPerHour.text = String(sc.miles)
   }
   //Calling conversionFeet function in SpeedConversionController class when value changed on feetPerMin textfield
    @IBAction func valueChangeOnFeetPerMin(_ sender: Any) {
        sc.conversionFeet((self.feetPerMin.text! as NSString).doubleValue)
        self.kilometrePerHour.text = String(sc.kilometre)
        self.metrePerSec.text = String(sc.metre)
        self.milesPerHour.text = String(sc.miles)
    }
     //Calling conversionKilometre function in SpeedConversionController class when value changed on kilometrePerHour textfield
    @IBAction func valueChangeOnKilometrePerHour(_ sender: Any) {
        sc.conversionKilometre((self.kilometrePerHour.text! as NSString).doubleValue)
        self.feetPerMin.text = String(sc.feet)
        self.metrePerSec.text = String(sc.metre)
        self.milesPerHour.text = String(sc.miles)
    }
     //Calling conversionMile function in SpeedConversionController class when value changed on milesPerHour textfield
    @IBAction func valueChangeOnMilesPerHour(_ sender: Any) {
        sc.conversionMile((self.milesPerHour.text! as NSString).doubleValue)
        self.feetPerMin.text = String(sc.feet)
        self.metrePerSec.text = String(sc.metre)
        self.kilometrePerHour.text = String(sc.kilometre)
    }
    
}
