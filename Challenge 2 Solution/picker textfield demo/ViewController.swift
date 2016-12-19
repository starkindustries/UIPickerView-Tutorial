//
//  ViewController.swift
//  picker textfield demo
//
//  Created by Apoorv Mote on 05/10/15.
//  Copyright © 2015 Apoorv Mote. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerTextField: UITextField!
    
    var pickOption = [["Space Grey", "Gold", "Sliver"], ["Macbook 12 inch", "iPhone 6 plus", "iPhone 6", "iPhone 5s"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickerView = UIPickerView()
        
        pickerView.delegate = self
        
        pickerTextField.inputView = pickerView
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return pickOption.count
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickOption[component].count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickOption[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let color = pickOption[0][pickerView.selectedRowInComponent(0)]
        let model = pickOption[1][pickerView.selectedRowInComponent(1)]
        pickerTextField.text = color + " " + model
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}

