//
//  ViewController.swift
//  iOSDay4
//
//  Created by Giselle Tavares on 31/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var pickerCountriesName: UIPickerView!
    
    let countryList = ["Canada", "Brazil", "USA", "India", "Russia", "Portugal", "Italy", "Spain", "South Africa", "Argentina", "Chile", "Venezuela", "France"]
    
    let colorList = ["Blue", "Green", "Yellow", "Grey", "White", "Black", "Purple", "Cyan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerCountriesName.dataSource = self
        self.pickerCountriesName.delegate = self
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2; // country name and color = 2 components
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var count = 0
        
        if component == 0 {
           count = self.countryList.count
        } else if component == 1 {
            count = self.colorList.count
        }
        return count
        
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return component == 0 ? self.countryList[row] : self.colorList[row] // start from zero
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        self.lblCountryName.text = component == 0 ?self.countryList[row] : self.colorList[row]
        
        let country = self.countryList[pickerCountriesName.selectedRow(inComponent: 0)] //list of countries
        let color = self.colorList[pickerCountriesName.selectedRow(inComponent: 1)] // list of colors
        
        print("\(country) -- \(color)")
        self.lblCountryName.text = "\(country) -- \(color)"
        
        
    }
}

