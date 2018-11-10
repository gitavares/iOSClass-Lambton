//
//  ViewController.swift
//  iOSDay9
//
//  Created by Giselle Tavares on 07/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "Settings", ofType: "plist") {
            if let contents = NSDictionary(contentsOfFile: path) as? [String: AnyObject] {
//                print(contents)
                
                print("Colors List")
        
//                print(contents["Colors"])
                let colorList = contents["Colors"] as! [String]
                for color in colorList {
                    print(color)
                }
                print("==============\n")
                
                let users = contents["Users"] as! [String: AnyObject]
                
                let firstName = users["firstName"] as! String
                let lastName = users["lastName"] as! String
                let gender = users["gender"] as! String
                
                print("First Name: \(firstName)")
                print("Last Name: \(lastName)")
                print("Gender: \(gender)")
//                for user in users {
                   //                    print("\(user.key) - \(user.value)")
//                }
                
                let employees = contents["Employee"] as! [AnyObject]
                
                for emp in employees {
                    print("===============")
                    
                    let id = emp["id"] as! Int
                    let firstName = emp["firstName"] as! String
                    let lastName = emp["lastName"] as! String
                    
                    print("ID: \(id)")
                    print("First name: \(firstName)")
                    print("Last name: \(lastName)")
                }
            }
        }
    }
}

