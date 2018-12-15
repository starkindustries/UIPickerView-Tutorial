//
//  CustomPickerDelegate.swift
//  picker textfield demo
//
//  Created by Zion Perez on 12/15/18.
//  Copyright © 2018 Apoorv Mote. All rights reserved.
//

import Foundation
import UIKit

protocol CustomPickerCallback {
    func pickerDidSelectRow(_ string: String?)
}

class CustomPickerDelegate: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    var pickerOption: [String] = ["one", "two", "three", "four", "five"]
    
    var callback: CustomPickerCallback?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerOption.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerOption[row]
    }
    
    // Hmm.. Is this function be causing the pickerView's background color problem?
    /*
     func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
     // create attributed string
     let myAttribute = [ NSAttributedString.Key.foregroundColor: ArmyColors.white ]
     return NSAttributedString(string: pickerOption[row], attributes: myAttribute)
     }*/
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        callback?.pickerDidSelectRow(pickerOption[row])        
    }
}
