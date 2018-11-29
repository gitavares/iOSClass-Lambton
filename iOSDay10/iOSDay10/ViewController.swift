//
//  ViewController.swift
//  iOSDay10
//
//  Created by Giselle Tavares on 12/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myWebViews: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load URL content        
        let url = URL(string: "https://www.apple.com")
        if let u = url {
            let request = URLRequest(url: u)
            myWebViews.load(request)
        }
        
        
//        var htmlString = "<h1>helloooo</h1>"
//        myWebViews.loadHTMLString(htmlString, baseURL: nil)
        
//        loadFromFile()
        
    }
    
    func loadFromFile()
    {
        let localfilePath = Bundle.main.url(forResource: "help", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        self.myWebViews.load(myRequest);
    }
    
}

