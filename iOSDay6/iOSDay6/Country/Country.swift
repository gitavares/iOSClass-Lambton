//
//  Country.swift
//  iOSDay6
//
//  Created by Giselle Tavares on 02/11/18.
//  Copyright © 2018 Giselle Tavares. All rights reserved.
//

import Foundation

struct Country {
    var countryId: Int
    var countryName: String
    var capitalCityName: String
    var namedFlag: String
    
    init(countryId: Int, countryName: String, capitalCityName: String, namedFlag: String) {
        self.countryId = countryId
        self.countryName = countryName
        self.capitalCityName = capitalCityName
        self.namedFlag = namedFlag
    }
}
