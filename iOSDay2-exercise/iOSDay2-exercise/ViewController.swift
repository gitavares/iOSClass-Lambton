//
//  ViewController.swift
//  iOSDay2-exercise
//
//  Created by Giselle Tavares on 30/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTextReturn: UILabel!
    var result: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTextReturn.text = result
    }

    @IBAction func btnToUpperCase(_ sender: UIButton) {
        setToUpperOrLowerCase(value: "uppercase")
    }
    
    @IBAction func btnToLowerCase(_ sender: UIButton) {
        setToUpperOrLowerCase(value: "lowercase")
    }
    
    func setToUpperOrLowerCase(value: String){
        let sb: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secondVC.data = value
        self.present(secondVC, animated: true, completion: nil)
    }
    
}

