//
//  HomeViewController.swift
//  iOSDay3
//
//  Created by Giselle Tavares on 30/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var lblUserName: UILabel!
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let unm = userName {
            self.lblUserName.text = unm
        } else {
            self.lblUserName.text = "No user name"
        }
        // Do any additional setup after loading the view.
    }
    
    func setResult(returnString: String) {
        self.lblUserName.text = returnString
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
