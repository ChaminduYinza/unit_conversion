//
//  WeightViewController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/9/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import UIKit
class WeightViewController: UIViewController {
    
    //Creating an object from WeightConversionControlle class
    var wc =  WeightConversionController()
    
    @IBOutlet weak var ounce: UITextField!
    @IBOutlet weak var kilogram: UITextField!
    @IBOutlet weak var gram: UITextField!
    @IBOutlet weak var pound: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Calling the hideKeyboard function in ParentViewController (extension)
        self.hideKeyboard()
        
    }
    //this function will clear the text fields
    func clearText(){
        self.ounce.text=""
        self.pound.text=""
        self.kilogram.text=""
        self.gram.text=""
    }
    
    //Calling cleartext function when gram textfield is selected
    @IBAction func clickOnGram(_ sender: Any) {
        clearText()
    }
    //Calling cleartext function when kilogram textfield is selected
    @IBAction func clickOnKilogram(_ sender: Any) {
        clearText()
    }
    //Calling cleartext function when pound textfield is selected
    @IBAction func clickOnPound(_ sender: Any) {
        clearText()
    }
    //Calling cleartext function when ounce textfield is selected
    @IBAction func clickOnOunce(_ sender: Any) {
        clearText()
    }
    
    //Calling conversionGram function in WeightConversionController class when value changed on gram textfield
    @IBAction func valueChangeOnGram(_ sender: Any) {
        wc.conversionGram((self.gram.text! as NSString).doubleValue)
        self.ounce.text = String(wc.ounce)
        self.pound.text = String(wc.pound)
        self.kilogram.text = String(wc.kilogram)
        
    }
    //Calling valueChangeOnKilogram function in WeightConversionController class when value changed on kilogram textfield
    @IBAction func valueChangeOnKilogram(_ sender: Any) {
        wc.conversionKilogram((self.kilogram.text! as NSString).doubleValue)
        self.ounce.text = String(wc.ounce)
        self.pound.text = String(wc.pound)
        self.gram.text = String(wc.gram)
    }
    //Calling conversionPound function in WeightConversionController class when value changed on pound textfield
    @IBAction func valueChangeOnPound(_ sender: Any) {
        wc.conversionPound((self.pound.text! as NSString).doubleValue)
        self.ounce.text = String(wc.ounce)
        self.gram.text = String(wc.gram)
        self.kilogram.text = String(wc.kilogram)
    }
    //Calling valueChangeOnOunce function in WeightConversionController class when value changed on ounce textfield
    @IBAction func valueChangeOnOunce(_ sender: Any) {
        wc.conversionOunce((self.ounce.text! as NSString).doubleValue)
        self.pound.text = String(wc.pound)
        self.gram.text = String(wc.gram)
        self.kilogram.text = String(wc.kilogram)
    }
    
}


