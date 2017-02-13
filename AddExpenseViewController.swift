//
//  AddExpenseViewController.swift
//  eTracker_Deb12
//
//  Created by Sruthi Mavuleti on 2/12/17.
//  Copyright © 2017 Sruthi Mavuleti. All rights reserved.
//
// this controller displays the add expense scene as in following:
// by category using picker, date using date picker, amount textfield, add and cancel buttons.

import UIKit

class AddExpenseViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var categoryPickerView: UIPickerView!

    var categoryAns = 0
    //list of categories
    var categoryPicker = ["Groceries", "Clothing", "Medical", "Movies", "Fuel"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        categoryPickerView.delegate = self
        categoryPickerView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //methods for picker view
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categoryPicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        categoryAns = row
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categoryPicker[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
       @IBOutlet weak var displayCatePicker: UILabel!

    
}
