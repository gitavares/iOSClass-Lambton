//
//  ViewController.swift
//  iOSDay4-Pickers
//
//  Created by Giselle Tavares on 31/10/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

// https://stackoverflow.com/questions/31132807/how-can-i-populate-a-picker-view-depending-on-the-selection-of-another-picker-vi

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pckCountryName: UIPickerView!
    
    @IBOutlet weak var pckStateName: UIPickerView!
    
    let countryList = ["Canada", "Brazil", "USA", "India", "Russia", "Portugal", "Italy", "Spain", "South Africa", "Argentina", "Chile", "Venezuela", "France"]
    
    let brazilStateList = ["Pernambuco", "Paraiba", "Ceara"]
    
    let indiaStateList = ["Jaipur", "Agra", "New Delhi"]
    
    let canadaProvinceList = ["Ontario", "British Columbia", "Quebec", "Saskatchwen"]
    
    var selectedItemsArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedItemsArray = canadaProvinceList
        self.pckCountryName.dataSource = self
        self.pckCountryName.delegate = self
        self.pckStateName.dataSource = self
        self.pckStateName.delegate = self
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == pckCountryName {
            return countryList.count
        } else if pickerView == pckStateName {
            return selectedItemsArray.count
        }
        return 0
    }
    
    
}

extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == pckCountryName {
            return self.countryList[row]
        } else if pickerView == pckStateName {
            return self.selectedItemsArray[row]
        }
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == pckCountryName {
            switch row {
            case 0:
                self.selectedItemsArray = self.canadaProvinceList
            case 1:
                self.selectedItemsArray = self.brazilStateList
            case 3:
                self.selectedItemsArray = self.indiaStateList
            default:
                self.selectedItemsArray = []
            }
            pckStateName.reloadAllComponents()
        }
//        } else if pickerView == pckStateName {
//            var item = self.selectedItemsArray[row]
//        }
    }
}

