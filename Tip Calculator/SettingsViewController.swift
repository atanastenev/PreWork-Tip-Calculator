//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Atanas Tenev on 1/6/21.
//

import UIKit

class SettingsViewController: UIViewController {

    // var mainViewController:ViewController?
    @IBOutlet weak var darkModeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func darkModeSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            view.backgroundColor = UIColor.black
            darkModeLabel.textColor = UIColor.white
            // ViewController?.onUserAction()
        }
        else {
            view.backgroundColor = UIColor.lightGray
            darkModeLabel.textColor = UIColor.black
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
