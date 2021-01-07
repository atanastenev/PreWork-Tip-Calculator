//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Atanas Tenev on 1/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var peopleControl: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        
        // Calculate tip-end total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        totalPerPersonLabel.text = String(format: "%.2f", total)
        
    }
    @IBAction func personStepperChange(_ sender: UIStepper) {
        peopleLabel.text = Int(sender.value).description
        //print(Int(sender.value).description)
        let people = Double(peopleLabel.text!) ?? 1
        print(people)
        let total = Double(totalLabel.text!) ?? 0
        print(total)
        let totalPerPerson = total / people
        totalPerPersonLabel.text = String(format: "$%.2f", totalPerPerson)
        
    }
    
    /*func onUserAction(){
        view.backgroundColor = UIColor.black
    } */
    
}

