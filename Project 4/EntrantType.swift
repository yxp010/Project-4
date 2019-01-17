//
//  EntrantType.swift
//  Project 4
//
//  Created by Yongnan Piao on 1/17/19.
//  Copyright © 2019 Spoiled Wolf. All rights reserved.
//

import Foundation
enum EntrantType: String, CaseIterable {
    case vipGuest = "Vip Pass"
    case classicGuest = "Classic Pass"
    case freeChildGuest = "Free Child Pass"
    case hourlyEmployeeFoodService = "Hourly Employee Food Service Pass"
    case hourlyEmployeeRideService = "Hourly Employee Ride Service Pass"
    case hourlyEmployeeMaintenance = "Hourly Employee Maintenance Pass"
    case manager = "Manager Pass"
    
    static func random<G: RandomNumberGenerator>(using generator: inout G) -> EntrantType {
        return EntrantType.allCases.randomElement(using: &generator)!
    }
    
    static func random() -> EntrantType {
        var g = SystemRandomNumberGenerator()
        return EntrantType.random(using: &g)
    }
    
    
}
extension EntrantType {
    var discounts: String {
        switch self {
        case .classicGuest, .freeChildGuest:
            return "no discounts"
        case .vipGuest: return "15% discounts on food, 20% discounts on merchandise"
        case .hourlyEmployeeFoodService, .hourlyEmployeeMaintenance, .hourlyEmployeeRideService: return "15% discounts on food, 25% discounts on merchandise"
        case .manager: return "25% discounts on food, 25% discounts on merchandise"
        }
    }
    var requiredInformation: [InformationType]? {
        switch self {
        case .vipGuest: return nil
        case .classicGuest: return nil
        case .freeChildGuest: return [.dateOfBirth]
        case .hourlyEmployeeFoodService, .hourlyEmployeeRideService, .hourlyEmployeeMaintenance, .manager: return [.firstName, .lastName, .streetAddress, .city, .state, .zipCode]
        }
    }
    var accessableAreas: [Areas] {
        switch self {
        case .vipGuest, .classicGuest, .freeChildGuest: return [.amusementAreas]
        case .hourlyEmployeeFoodService: return [.amusementAreas, .kitchenAreas]
        case .hourlyEmployeeRideService: return [.amusementAreas, .rideControlAreas]
        case .hourlyEmployeeMaintenance: return [.amusementAreas, .kitchenAreas, .rideControlAreas, .maintenanceAreas]
        case .manager: return [.amusementAreas, .kitchenAreas, .rideControlAreas, .maintenanceAreas, .officeAreas]
        }
    }
    var privileges: [Privilege] {
        switch self {
        case .classicGuest, .freeChildGuest: return [.allRidesAccessable]
        case .vipGuest: return [.allRidesAccessable, .discountable, .skiplinable]
        case .hourlyEmployeeFoodService, .hourlyEmployeeMaintenance, .hourlyEmployeeRideService, .manager: return [.allRidesAccessable, .discountable]
        }
    }
    func createEntrant() -> Entrant {
        switch self {
        case .classicGuest:
            return ClassicGuest()
        case .freeChildGuest: return FreeChildGuest()
        case .hourlyEmployeeFoodService: return HourlyEmployeeFoodService()
        case .hourlyEmployeeMaintenance: return HourlyEmployeeMaintenance()
        case .hourlyEmployeeRideService: return HourlyEmployeeRideService()
        case .manager: return Manager()
        case .vipGuest: return VipGuest()
        }
    }
}
