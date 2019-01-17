//
//  InformationType.swift
//  Project 4
//
//  Created by Yongnan Piao on 1/17/19.
//  Copyright © 2019 Spoiled Wolf. All rights reserved.
//

import Foundation
enum InformationType: String {
    case firstName = "First Name"
    case lastName = "Last Name"
    case streetAddress = "Street Address"
    case city = "City"
    case state = "State"
    case zipCode = "Zip Code"
    case dateOfBirth = "Date of Birth"
    case dateOfVisit = "Date of Visit"
    case vendorCompany = "Company"
}

extension InformationType {
    //    var testCases: String {
    //        switch self {
    //        case .firstName: return ["Hanjie", "cui"].randomElement()!
    //        default:
    //            b
    //        }
    //    }
    var placeHolder: String? {
        switch self {
        case .dateOfBirth: return "MM / DD / YYYY"
        case .dateOfVisit: return "MM / DD / YYYY"
        default:
            return nil
        }
    }
    var notProvidedError: TextFieldError {
        switch self {
        case .firstName: return TextFieldError.firstNameNotProvided
        case .lastName: return TextFieldError.lastNameNotProvided
        case .streetAddress: return TextFieldError.streetAddressNotProvided
        case .city: return TextFieldError.cityNotProvided
        case .state: return TextFieldError.stateNotProvided
        case .zipCode: return TextFieldError.zipCodeNotProvided
        case .dateOfBirth: return TextFieldError.dateOfBirthNotProvided
        case .dateOfVisit: return TextFieldError.dateOfVisitNotProvided
        case .vendorCompany: return TextFieldError.companyNotProvided
        }
    }
}
