//
//  SecondViewController.swift
//  iOSDay5
//
//  Created by Giselle Tavares on 01/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblUserDefault: UILabel!
    
    @IBOutlet weak var imgCircus: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        
        if let userName = ud.string(forKey: "userName") {
            lblUserDefault.text = userName
            
            if let img = UIImage(named: userName) {
                imgCircus.image = img
            }
        } else {
            lblUserDefault.text = "No default data"
        }
//        imgCircus.image = UIImage(named: "gorilla")
       

        // Do any additional setup after loading the view.
    }

}
