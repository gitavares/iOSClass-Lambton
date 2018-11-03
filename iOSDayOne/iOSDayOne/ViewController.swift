//
//  ViewController.swift
//  iOSDayOne
//
//  Created by Giselle Tavares on 26/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit // all the components are here

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnSubmitClick(_ sender: UIButton) {
        lblTitle.text = "Welcome to iOS Programming"
        lblTitle.textColor = UIColor.white
    }
    
}

