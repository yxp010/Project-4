//
//  Vendor.swift
//  Project 4
//
//  Created by Yongnan Piao on 12/12/18.
//  Copyright © 2018 Spoiled Wolf. All rights reserved.
//

import Foundation

class Vendor: Entrant, InformationRequired {
    var type: EntrantType = .vendor
    var information: Person = Person()
    
    
    
    convenience init(firstName: String, lastName: String, vendorCompany: String, dateOfBirth: String, dateOfVisit: String) {
        self.init()
        self.information.firstName = firstName
        self.information.lastName = lastName
        self.information.vendorCompany = vendorCompany
        self.information.dateOfBirth = dateOfBirth
        self.information.dateOfVisit = dateOfVisit
    }
}
