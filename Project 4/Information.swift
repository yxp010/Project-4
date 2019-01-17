//
//  Information.swift
//  Project 4
//
//  Created by Yongnan Piao on 12/12/18.
//  Copyright © 2018 Spoiled Wolf. All rights reserved.
//

import Foundation

struct Information {
    
    var firstName: String? = nil
    var lastName: String? = nil
    var streetAddress: String? = nil
    var city: String? = nil
    var state: String? = nil
    var zipCode: String? = nil
    var dateOfBirth: String? = nil
    var dateOfVisit: String? = nil
    var vendorCompany: String? = nil
    
    lazy var allInformation: [String] = {
        var informations = [String]()
        if let firstName = self.firstName {
            informations.append(firstName)
        }
        if let lastName = self.lastName {
            informations.append(lastName)
        }
        if let streetAddress = self.streetAddress {
            informations.append(streetAddress)
        }
        if let city = self.city {
            informations.append(city)
        }
        if let state = self.state {
            informations.append(state)
        }
        if let zipCode = self.zipCode {
            informations.append(zipCode)
        }
        if let dateOfBirth = self.dateOfBirth {
            informations.append(dateOfBirth)
        }
        if let dateOfVisit = self.dateOfVisit {
            informations.append(dateOfVisit)
        }
        if let vendorCompany = self.vendorCompany {
            informations.append(vendorCompany)
        }
        return informations
    }()
    
    func assignInformation(on textFields: [InformationTextField]) {
        for textField in textFields {
            switch textField.type {
            case .city: textField.text = city
            case .dateOfBirth: textField.text = dateOfBirth
            case .dateOfVisit: textField.text = dateOfVisit
            case .firstName: textField.text = firstName
            case .lastName: textField.text = lastName
            case .state: textField.text = state
            case .streetAddress: textField.text = streetAddress
            case .vendorCompany: textField.text = vendorCompany
            case .zipCode: textField.text = zipCode
            }
        }
    }
    
    func printOutInformation() {
        if let firstName = self.firstName {
            print("First Name: \(firstName)")
        }
        if let lastName = self.lastName {
            print("Last Name: \(lastName)")
        }
        if let streetAddress = self.streetAddress {
            print("Street Address: \(streetAddress)")
        }
        if let city = self.city {
            print("City: \(city)")
        }
        if let state = self.state {
            print("State: \(state)")
        }
        if let zipCode = self.zipCode {
            print("Zip Code: \(zipCode)")
        }
        if let dateOfBirth = self.dateOfBirth {
            print("Date of Birth: \(dateOfBirth)")
        }
        if let dateOfVisit = self.dateOfVisit {
            print("Date of Visit: \(dateOfVisit)")
        }
        if let vendorCompany = self.vendorCompany {
            print("Vendor Company: \(vendorCompany)")
        }
    }
}
