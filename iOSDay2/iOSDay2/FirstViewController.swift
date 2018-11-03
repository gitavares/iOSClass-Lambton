//
//  ViewController.swift
//  iOSDay2
//
//  Created by Giselle Tavares on 29/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var tglShowEmail: UISwitch!
    @IBOutlet weak var lblSelected: UILabel!
    @IBOutlet weak var lblSlider: UILabel!
    @IBOutlet weak var lblAlertResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleShowEmail(_ sender: UISwitch) {
//        if tglShowEmail.isOn && txtEmail.text != nil {
//            lblEmail.text = txtEmail.text
//        }
        
        // no need to create an outlet for the toggle
        if sender.isOn && txtEmail.text != nil {
            lblEmail.text = txtEmail.text
        } else {
            lblEmail.text = "No value to display"
        }
    }
    
    @IBAction func segmentedGender(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            lblSelected.text = "Female"
        } else if sender.selectedSegmentIndex == 1 {
            lblSelected.text = "Male"
        } else {
            lblSelected.text = "Other"
        }
    }
    
    @IBAction func sliderPercentage(_ sender: UISlider) {
        lblSlider.text = "\(Int(sender.value * 100))%"
    }
    
    @IBAction func buttonAlert(_ sender: UIButton) {
//        let alert = UIAlertController(title: "Alert box", message: "Some message just to show", preferredStyle: .alert)
        
        let alert = UIAlertController(title: "Alert box", message: "Some message just to show", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: saveRecord))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
        self.present(alert, animated: true)
    }
    

    func saveRecord(action: UIAlertAction!){
        self.lblAlertResult.text = "Ok! Uhuhuuu!";
    }
    
    
    @IBAction func goToThirdScreen(_ sender: UIButton) {
//        let thirdVC = ThirdViewController()
        let sb: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = sb.instantiateViewController(withIdentifier: "thirdVC") as! ThirdViewController
        self.present(thirdVC, animated: true, completion: nil)
    }
    
    
    
    
    
}

