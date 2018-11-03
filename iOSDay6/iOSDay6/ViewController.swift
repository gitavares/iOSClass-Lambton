//
//  ViewController.swift
//  iOSDay6
//
//  Created by Giselle Tavares on 02/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblCountry: UITableView!
    
    var countryList = ["Brazil", "Canada", "USA", "India", "Russia", "Japan", "Argentina", "Italy", "France", "Chile", "UK", "China", "Vietna", "Australia"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblCountry.delegate = self
        tblCountry.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Section 1" : "Section 2"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return section == 0 ? "Footer 1" : "Footer 2"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.cellForRow(at: indexPath)
//        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: nil)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCountry") as! UITableViewCell
        
        cell.textLabel?.text = countryList[indexPath.row]
        cell.detailTextLabel?.text = "Hello"
        
        cell.imageView?.image = indexPath.row % 2 == 0 ? UIImage(named: "gorilla") : UIImage(named: "lion")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(countryList[indexPath.row])
    }
    
    
}



