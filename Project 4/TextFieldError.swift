//
//  TextFieldError.swift
//  Project 4
//
//  Created by Yongnan Piao on 1/17/19.
//  Copyright © 2019 Spoiled Wolf. All rights reserved.
//

import Foundation

enum TextFieldError: Error {
    case typeOfPassNotSelected
    case dateOfBirthNotProvided
    case dateOfVisitNotProvided
    case firstNameNotProvided
    case lastNameNotProvided
    case companyNotProvided
    case streetAddressNotProvided
    case cityNotProvided
    case stateNotProvided
    case zipCodeNotProvided
}
extension TextFieldError {
    var alertTitle: String {
        switch self {
        case .typeOfPassNotSelected: return "Type of Pass Not Choosed"
        case .dateOfBirthNotProvided: return "Date of Birth Not Provided"
        case .dateOfVisitNotProvided: return "Date of Visit Not Provided"
        case .firstNameNotProvided: return "First Name Not Provided"
        case .lastNameNotProvided: return "Last Name Not Provided"
        case .companyNotProvided: return "Company Not Provided"
        case .streetAddressNotProvided: return "Street Address Not Provided"
        case .cityNotProvided: return "City Not Provided"
        case .stateNotProvided: return "State Not Provided"
        case .zipCodeNotProvided: return "Zip Code Not Provided"
        }
    }
    var alertMessage: String {
        switch self {
        case .typeOfPassNotSelected: return "Please choose a type of pass to continue"
        case .dateOfBirthNotProvided: return "Please provide date of birth to continue"
        case .dateOfVisitNotProvided: return "Please provide date of visit to continue"
        case .firstNameNotProvided: return "Please provide first name to continue"
        case .lastNameNotProvided: return "Please provide last name to continue"
        case .companyNotProvided: return "Please provide company name to continue"
        case .streetAddressNotProvided: return "Please provide street address to continue"
        case .cityNotProvided: return "Please provide city to continue"
        case .stateNotProvided: return "Please provide state to continue"
        case .zipCodeNotProvided: return "Please provide zip code to continue"
        }
    }
}
