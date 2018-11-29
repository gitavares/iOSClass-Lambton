//
//  ViewController.swift
//  iOSDay15
//
//  Created by Giselle Tavares on 15/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title =  NSLocalizedString("STR_TITLE", comment: "")
        
        
        lblValue.text = NSLocalizedString("STR_HELLO", comment: "")
        
        
    }


}

