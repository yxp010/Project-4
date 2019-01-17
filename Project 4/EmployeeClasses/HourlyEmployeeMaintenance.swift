//
//  HourlyEmployeeMaintenance.swift
//  Project 4
//
//  Created by Yongnan Piao on 1/17/19.
//  Copyright © 2019 Spoiled Wolf. All rights reserved.
//

import Foundation

class HourlyEmployeeMaintenance: Employee {
    var foodDiscount: Int = 15
    var merchandiseDiscount: Int = 25
    
    init() {
        super.init(type: .hourlyEmployeeMaintenance)
    }
    
    convenience init(firstName: String? = nil, lastName: String? = nil, streetAddress: String? = nil, city: String? = nil, state: String? = nil, zipCode: String? = nil) {
        self.init()
        self.information.firstName = firstName
        self.information.lastName = lastName
        self.information.streetAddress = streetAddress
        self.information.city = city
        self.information.state = state
        self.information.zipCode = zipCode
    }
}
