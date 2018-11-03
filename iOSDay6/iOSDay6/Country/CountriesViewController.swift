//
//  CountriesViewController.swift
//  iOSDay6
//
//  Created by Giselle Tavares on 02/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class CountriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblCountries: UITableView!
    var countryList: [Country]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblCountries.delegate = self
        tblCountries.dataSource = self
        populateCountries()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblCountries.dequeueReusableCell(withIdentifier: "cellCountry") as! UITableViewCell
        
        cell.textLabel?.text = String?(countryList?[indexPath.row].countryName ?? "")
        cell.detailTextLabel?.text = String?(countryList?[indexPath.row].capitalCityName ?? "")
        cell.imageView?.image = UIImage(named: (String?(countryList?[indexPath.row].namedFlag ?? ""))!)
        
        return cell
    }
    
    private func populateCountries() {
        countryList = [Country]()
        countryList?.append(Country(countryId: 1, countryName: "Bosnian", capitalCityName: "Sarajevo", namedFlag: "flags/Bosnian-Flag-256"))
        countryList?.append(Country(countryId: 2, countryName: "Brazil", capitalCityName: "Brasilia", namedFlag: "flags/Brazil-Flag-256"))
        countryList?.append(Country(countryId: 3, countryName: "Croatian", capitalCityName: "Zagreb", namedFlag: "flags/Croatian-Flag-256"))
        countryList?.append(Country(countryId: 4, countryName: "England", capitalCityName: "London", namedFlag: "flags/England-Flag-256"))
        countryList?.append(Country(countryId: 5, countryName: "Ex-Yugoslavia", capitalCityName: "???", namedFlag: "flags/Ex-Yugoslavia-Flag-256"))
        countryList?.append(Country(countryId: 6, countryName: "Korea", capitalCityName: "Seoul", namedFlag: "flags/Korea-Flag-256"))
        countryList?.append(Country(countryId: 7, countryName: "Malaysia", capitalCityName: "Kuala Lumpur", namedFlag: "flags/Malaysia-Flag-256"))
        countryList?.append(Country(countryId: 8, countryName: "Mexico", capitalCityName: "Mexico City", namedFlag: "flags/Mexico-Flag-256"))
        countryList?.append(Country(countryId: 9, countryName: "Netherlands", capitalCityName: "Amsterdam", namedFlag: "flags/Netherlands-Flag-256"))
        countryList?.append(Country(countryId: 10, countryName: "New-Zealand", capitalCityName: "Wellington", namedFlag: "flags/New-Zealand-Flag-256"))
        countryList?.append(Country(countryId: 11, countryName: "Russia", capitalCityName: "Moscow", namedFlag: "flags/Russia-Flag-256"))
        countryList?.append(Country(countryId: 12, countryName: "Sweden", capitalCityName: "Stockholm", namedFlag: "flags/Sweden-Flag-256"))
        countryList?.append(Country(countryId: 13, countryName: "Switzerland", capitalCityName: "Bern", namedFlag: "flags/Switzerland-Flag-256"))
        countryList?.append(Country(countryId: 14, countryName: "Taiwan", capitalCityName: "Taipei", namedFlag: "flags/Taiwan-Flag-256"))
        countryList?.append(Country(countryId: 15, countryName: "Thailand", capitalCityName: "Bangkok", namedFlag: "flags/Thailand-Flag-256"))
        countryList?.append(Country(countryId: 16, countryName: "Turkey", capitalCityName: "Ankara", namedFlag: "flags/Turkey-Flag-256"))
        countryList?.append(Country(countryId: 17, countryName: "United-Kingdom", capitalCityName: "London", namedFlag: "flags/United-Kingdom-Flag-256"))
        countryList?.append(Country(countryId: 18, countryName: "United-States", capitalCityName: "Washington", namedFlag: "flags/United-States-Flag-256"))
        countryList?.append(Country(countryId: 19, countryName: "Venezuela", capitalCityName: "Caracas", namedFlag: "flags/Venezuela-Flag-256"))
        countryList?.append(Country(countryId: 20, countryName: "Vietnam", capitalCityName: "Hanoi", namedFlag: "flags/Vietnam-Flag-256"))
    }

}
