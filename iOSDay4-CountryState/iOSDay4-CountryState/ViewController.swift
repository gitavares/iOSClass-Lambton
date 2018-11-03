//
//  ViewController.swift
//  iOSDay4-CountryState
//
//  Created by Giselle Tavares on 31/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var pickerCountryState: UIPickerView!
    
    let countries = ["Brazil":["Pernambuco", "Paraiba", "Ceara"],
                     "India": ["Jaipur", "Agra", "New Delhi"],
                     "Canada": ["Ontario", "British Columbia", "Quebec", "Saskatchwen"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerCountryState.dataSource = self
        self.pickerCountryState.delegate = self
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2; // country name and state/city = 2 components
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let selectedRow = pickerView.selectedRow(inComponent: 0)
        return countries[Array(countries.keys)[selectedRow]]?.count ?? 0
        
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         let selectedRow = pickerView.selectedRow(inComponent: 0)
        return component == 0 ? Array(countries.keys)[row] :countries[Array(countries.keys)[selectedRow]]?[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (component == 0) {
            pickerView.reloadComponent(1)
        }
    }

}



