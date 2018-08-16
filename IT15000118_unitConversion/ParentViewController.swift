//
//  ParentViewController.swift
//  IT15000118_unitConversion
//
//  Created by Chamindu Thiranjaya on 8/16/18.
//  Copyright © 2018 Chamindu Thiranjaya. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

//Below extension is written from the UIViewController class and the functions inside this extension can be called from all the UIVIewController classes
extension UIViewController {
    //This function will trigger when the user type anywhere else after promt the keyboard and the current keyboard will be hiden from the view
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
