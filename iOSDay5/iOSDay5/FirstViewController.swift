//
//  ViewController.swift
//  iOSDay5
//
//  Created by Giselle Tavares on 01/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var swtRememberMe: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        let userName = ud.string(forKey: "userName")
        txtUsername.text = userName
    }
    
    
    @IBAction func btnSave(_ sender: UIButton) {
        let ud = UserDefaults.standard
        
        if swtRememberMe.isOn {
            ud.set(txtUsername.text, forKey: "userName")
        } else {
            ud.removeObject(forKey: "userName")
        }
        
        toNextScreen()
    }
    
    internal func toNextScreen() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(withIdentifier: "SecondVC")
        navigationController?.pushViewController(secondVC, animated: true)
    }
    

}

