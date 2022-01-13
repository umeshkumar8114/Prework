//
//  ViewController.swift
//  Prework
//
//  Created by Umesh Kumar on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text input field
        let bill=Double(BillAmountTextField.text!) ?? 0
        
        //Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format:"$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}

