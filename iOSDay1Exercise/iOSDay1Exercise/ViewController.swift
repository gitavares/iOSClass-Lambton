//
//  ViewController.swift
//  iOSDay1Exercise
//
//  Created by Giselle Tavares on 26/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtLogin: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var lblAnswer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnSubmitAction(_ sender: Any) {
        if txtLogin.text == "admin" &&  txtPassword.text == "admin@123" {
            
            lblAnswer.text = "Success, \(txtLogin.text!)"
            lblAnswer.textColor = UIColor.blue
            
        } else {
            lblAnswer.text = "Fail"
            lblAnswer.textColor = UIColor.red
        }
        
    }
}

