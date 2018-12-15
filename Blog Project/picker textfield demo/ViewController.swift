//
//  ViewController.swift
//  picker textfield demo
//
//  Created by Apoorv Mote on 05/10/15.
//  Copyright © 2015 Apoorv Mote. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CustomPickerCallback {
    
    @IBOutlet weak var pickerTextField: UITextField!
    
    var pickOption = ["one", "two", "three", "seven", "fifteen"]
    
    lazy var pickerDelegate: CustomPickerDelegate = {
        let pickerDelegate = CustomPickerDelegate()
        pickerDelegate.callback = self
        return pickerDelegate
    }()
    
    lazy var pickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.delegate = pickerDelegate
        picker.backgroundColor = UIColor.blue 
        return picker
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let pickerView = UIPickerView()
//        pickerView.backgroundColor = UIColor.red
//        pickerView.delegate = self
        
        pickerTextField.inputView = pickerView
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
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
    }*/

    func pickerDidSelectRow(_ string: String?) {
        pickerTextField.text = string
    }
}

