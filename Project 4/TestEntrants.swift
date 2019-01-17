//
//  TestEntrants.swift
//  Project 4
//
//  Created by Yongnan Piao on 12/12/18.
//  Copyright © 2018 Spoiled Wolf. All rights reserved.
//

import Foundation

struct TestEntrants {
    
    
    
    static let classicGuest = ClassicGuest()
    static let vipGuest = VipGuest()
    static let freeChild1 = FreeChildGuest(dateOfBirth: "12/12/2009")
    static let freeChild2 = FreeChildGuest(dateOfBirth: "12/12/2012")
    static let hourlyEmployeeFoodService1 = HourlyEmployeeFoodService(firstName: "Neymar", lastName: "Santos", streetAddress: "123 pojsdf street", city: "Austin", state: "Texas", zipCode: "12324")
    static let hourlyEmployeeFoodService2 = HourlyEmployeeFoodService(firstName: "Cristiano", lastName: "Ronaldo", streetAddress: "832 sdahfo street", city: "Spring", state: "Texas", zipCode: "47282")
    static let hourlyEmployeeRideService1 = HourlyEmployeeRideService(firstName: "pasdji", lastName: "osaijfo", streetAddress: "231 sofijas street", city: "BeiJing", state: "BeiJing", zipCode: "123532")
    static let hourlyEmployeeRideService2 = HourlyEmployeeRideService(firstName: "Jordan", lastName: "Piao", streetAddress: "382 sdiofj street", city: "Los Angeles", state: "California", zipCode: "38594")
    static let hourlyEmployeeMaintenance1 = HourlyEmployeeMaintenance(firstName: "Leo", lastName: "Messi", streetAddress: "123 jidof street", city: "Barcelona", state: "Ohio", zipCode: "49234")
    static let hourlyEmployeeMaintenance2 = HourlyEmployeeMaintenance(firstName: "Steve", lastName: "Wang", streetAddress: "8391 ppojid street", city: "Dallas", state: "Texas", zipCode: "94321")
    static let manager1 = Manager(firstName: "Hanjie", lastName: "Cui", streetAddress: "9393 jfioja ave", city: "Shanghai", state: "Shanghai", zipCode: "38923")
    static let manager2 = Manager(firstName: "HyunJin", lastName: "Han", streetAddress: "5202 pidfd hill ct", city: "Woodlands", state: "Washington", zipCode: "89295")
    
    static let failedFreeChild = FreeChildGuest()
    static let failedHourlyEmployeeFoodService = HourlyEmployeeFoodService(lastName: "Santos", streetAddress: "123 pojsdf street", city: "Austin", state: "Texas", zipCode: "12324")
    static let failedHourlyEmployeeRideService = HourlyEmployeeRideService(firstName: "pasdji", streetAddress: "231 sofijas street", city: "BeiJing", state: "BeiJing", zipCode: "123532")
    static let failedHourlyEmployeeMaintenance = HourlyEmployeeMaintenance(firstName: "Leo", lastName: "Messi", city: "Barcelona", state: "Ohio", zipCode: "49234")
    static let failedManager1 = Manager(firstName: "Hanjie", lastName: "Cui", streetAddress: "9393 jfioja ave", city: "Shanghai", zipCode: "38923")
    static let failedManager2 = Manager(firstName: "HyunJin", lastName: "Han", streetAddress: "5202 pidfd hill ct", city: "Woodlands", state: "Washington")

    static let createTestEntrantFunctions = [createSuccessfulTestEntrant(with: EntrantType.random()), createUnsuccessfulTestEntrant(with: EntrantType.random())]
    
    static func createUnsuccessfulTestEntrant(with type: EntrantType) -> Entrant {
        switch type {
        case .freeChildGuest: return failedFreeChild
        case .hourlyEmployeeFoodService: return failedHourlyEmployeeFoodService
        case .hourlyEmployeeMaintenance: return failedHourlyEmployeeMaintenance
        case .hourlyEmployeeRideService: return failedHourlyEmployeeRideService
        case .manager: return [failedManager1, failedManager2].randomElement()!
        default: return createSuccessfulTestEntrant(with: type)
        }
    }
    
    static func createSuccessfulTestEntrant(with type: EntrantType) -> Entrant {
        switch type {
        case .classicGuest: return classicGuest
//        case .contractEmployee: return [contractEmployee1, contractEmployee2].randomElement()!
        case .freeChildGuest: return [freeChild1, freeChild2].randomElement()!
        case .hourlyEmployeeFoodService: return [hourlyEmployeeFoodService1, hourlyEmployeeFoodService2].randomElement()!
        case .hourlyEmployeeMaintenance: return [hourlyEmployeeMaintenance1, hourlyEmployeeMaintenance2].randomElement()!
        case .hourlyEmployeeRideService: return [hourlyEmployeeRideService1, hourlyEmployeeRideService2].randomElement()!
        case .manager: return [manager1, manager2].randomElement()!
//        case .seasonalGuest: return [seasonPassGuest1, seasonPassGuest2].randomElement()!
//        case .seniorGuest: return [seniorGuest1, seniorGuest2].randomElement()!
//        case .vendor: return [vendor1, vendor2].randomElement()!
        case .vipGuest: return vipGuest
        }
    }
}
