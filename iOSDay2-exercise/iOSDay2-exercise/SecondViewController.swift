//
//  SecondViewController.swift
//  iOSDay2-exercise
//
//  Created by Giselle Tavares on 30/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

//https://matteomanferdini.com/how-ios-view-controllers-communicate-with-each-other/

import UIKit

class SecondViewController: UIViewController {
    
    var data: String?

    @IBOutlet weak var txtSentence: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBackResult(_ sender: UIButton) {
        let sb: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = sb.instantiateViewController(withIdentifier: "FirstVC") as! ViewController
        
        if data == "uppercase" {
            firstVC.result = (txtSentence.text?.uppercased())!
        } else if data == "lowercase" {
            firstVC.result = (txtSentence.text?.lowercased())!
        }
        
        self.present(firstVC, animated: true, completion: nil)
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
