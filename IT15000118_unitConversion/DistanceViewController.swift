//
//  DistanceViewController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/9/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {
    //Creating an object from DistanceConversionController class
    var dc = DistanceConversionController()
    
    @IBOutlet weak var mile: UITextField!
    @IBOutlet weak var kilometre: UITextField!
    @IBOutlet weak var yard: UITextField!
    @IBOutlet weak var foot: UITextField!
    @IBOutlet weak var metre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
     //this function will clear the text fields
    func clearText(){
        self.mile.text = ""
        self.kilometre.text = ""
        self.yard.text = ""
        self.foot.text = ""
        self.metre.text = ""
    }
     //Calling cleartext function when metre textfield is selected
    @IBAction func clickOnMetre(_ sender: Any) {
        clearText()
    }
     //Calling cleartext function when foot textfield is selected
    @IBAction func clickOnFoot(_ sender: Any) {
        clearText()
    }
     //Calling cleartext function when yard textfield is selected
    @IBAction func clickOnYard(_ sender: Any) {
        clearText()
    }
     //Calling cleartext function when kilometre textfield is selected
    @IBAction func clickOnKilometre(_ sender: Any) {
        clearText()
    }
     //Calling cleartext function when mile textfield is selected
    @IBAction func clickOnMile(_ sender: Any) {
        clearText()
    }
    //Calling conversionMetre function in DistanceConversionController class when value changed on metre textfield
    @IBAction func valueChangeOnMetre(_ sender: Any) {
        dc.conversionMetre((self.metre.text! as NSString).doubleValue)
        self.kilometre.text = String(dc.kilometre)
        self.foot.text = String(dc.foot)
        self.yard.text = String(dc.yard)
        self.mile.text = String(dc.mile)
    }
    //Calling conversionFeet function in DistanceConversionController class when value changed on foot textfield
    @IBAction func valueChangeOnFoot(_ sender: Any) {
        dc.conversionFeet((self.foot.text! as NSString).doubleValue)
        self.kilometre.text = String(dc.kilometre)
        self.metre.text = String(dc.metre)
        self.yard.text = String(dc.yard)
        self.mile.text = String(dc.mile)
    }
    //Calling conversionYard function in DistanceConversionController class when value changed on yard textfield
    @IBAction func valueChangeOnYard(_ sender: Any) {
        dc.conversionYard((self.yard.text! as NSString).doubleValue)
        self.kilometre.text = String(dc.kilometre)
        self.metre.text = String(dc.metre)
        self.foot.text = String(dc.foot)
        self.mile.text = String(dc.mile)
    }
    //Calling conversionKilometre function in DistanceConversionController class when value changed on kilometre textfield
    @IBAction func valueChangeOnKilometre(_ sender: Any) {
        dc.conversionKilometre((self.kilometre.text! as NSString).doubleValue)
        self.yard.text = String(dc.yard)
        self.metre.text = String(dc.metre)
        self.foot.text = String(dc.foot)
        self.mile.text = String(dc.mile)
    }
    //Calling conversionMile function in DistanceConversionController class when value changed on mile textfield
    @IBAction func valueChangeOnMile(_ sender: Any) {
        dc.conversionMile((self.mile.text! as NSString).doubleValue)
        self.yard.text = String(dc.yard)
        self.metre.text = String(dc.metre)
        self.foot.text = String(dc.foot)
        self.kilometre.text = String(dc.kilometre)
    }
}
