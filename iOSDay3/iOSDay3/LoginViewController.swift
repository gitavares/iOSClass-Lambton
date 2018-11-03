//
//  ViewController.swift
//  iOSDay3
//
//  Created by Giselle Tavares on 30/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

protocol MyProtocolDelegate {
    func setYourName(name: String)
}

class LoginViewController: UIViewController, MyProtocolDelegate {
    
    func setYourName(name: String) {
        print("Login user Name \(name)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = sb.instantiateViewController(withIdentifier: "homeVC") as! HomeViewController
        
        homeVC.userName = "Giselle Tavares"
//        self.present(homeVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(homeVC, animated: true) //just when there is a Navigation View Controller
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("Segue call")
        
        if segue.destination is SignUpViewController {
            print("Segue Sign Up")
            let signUpVC = segue.destination as? SignUpViewController
            signUpVC?.delegate = self
            
        }
        
    }


}

