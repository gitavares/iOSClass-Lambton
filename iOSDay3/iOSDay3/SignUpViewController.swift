//
//  SignUpViewController.swift
//  iOSDay3
//
//  Created by Giselle Tavares on 30/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var delegate: MyProtocolDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSignUp(_ sender: UIButton) {
//        self.delegate = self.navigationController?.viewControllers[0] as! LoginViewController
        
        self.delegate?.setYourName(name: "Mia")
        self.navigationController?.popViewController(animated: true)
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
