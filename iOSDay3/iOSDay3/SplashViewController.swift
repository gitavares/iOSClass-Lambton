//
//  SplashViewController.swift
//  iOSDay3
//
//  Created by Giselle Tavares on 30/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // 2 seconds
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let loginVc = sb.instantiateViewController(withIdentifier: "navMain")
            self.present(loginVc, animated: true, completion: nil)
        }
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
