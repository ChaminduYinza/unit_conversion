//
//  WeightViewController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/9/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import UIKit
class WeightViewController: UIViewController {
    
    @IBOutlet weak var ounce: UITextField!
    @IBOutlet weak var kilogram: UITextField!
    @IBOutlet weak var gram: UITextField!
    @IBOutlet weak var pound: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func clearText(){
        self.ounce.text=""
        self.pound.text=""
        self.kilogram.text=""
        self.gram.text=""
    }
    @IBAction func clickOnGram(_ sender: Any) {
        clearText()
    }
    
    @IBAction func clickOnKilogram(_ sender: Any) {
        clearText()
    }
    
    @IBAction func clickOnPound(_ sender: Any) {
        clearText()
    }
    
    @IBAction func clickOnOunce(_ sender: Any) {
        clearText()
    }
    
    
}
