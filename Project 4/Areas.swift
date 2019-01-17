//
//  Areas.swift
//  Project 4
//
//  Created by Yongnan Piao on 1/17/19.
//  Copyright © 2019 Spoiled Wolf. All rights reserved.
//

import Foundation
enum Areas: String, CaseIterable {
    case amusementAreas = "Amusement"
    case kitchenAreas = "Kitchen"
    case rideControlAreas = "Ride Control"
    case maintenanceAreas = "Maintenance"
    case officeAreas = "Office"
    
    static func random<G: RandomNumberGenerator>(using generator: inout G) -> Areas {
        return Areas.allCases.randomElement(using: &generator)!
    }
    
    static func random() -> Areas {
        var g = SystemRandomNumberGenerator()
        return Areas.random(using: &g)
    }
    
}
