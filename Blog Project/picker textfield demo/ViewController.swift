//
//  ViewController.swift
//  picker textfield demo
//
//  Created by Apoorv Mote on 05/10/15.
//  Copyright © 2015 Apoorv Mote. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerTextField: UITextField!
    
    var pickOption = ["one", "two", "three", "four", "five"]
    
    var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerTextField.inputView = pickerView
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickOption.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickOption[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = pickOption[row]
    }
}

