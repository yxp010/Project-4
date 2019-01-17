//
//  TestEntrantGenerator.swift
//  Project 4
//
//  Created by Yongnan Piao on 1/17/19.
//  Copyright © 2019 Spoiled Wolf. All rights reserved.
//

import Foundation
import UIKit

class TestEtrantGenerator {
    
    var newEntrant: Entrant?
    var informationTextFields: [InformationTextField] = [InformationTextField(type: .dateOfBirth),
                                                         InformationTextField(type: .dateOfVisit),
                                                         InformationTextField(type: .firstName),
                                                         InformationTextField(type: .lastName),
                                                         InformationTextField(type: .vendorCompany),
                                                         InformationTextField(type: .streetAddress),
                                                         InformationTextField(type: .city),
                                                         InformationTextField(type: .state),
                                                         InformationTextField(type: .zipCode)]
    init() {
        self.createRandomEntrantType()
    }
    
    // create a random type of Entrant.
    // This function could create a failed test entrant intentionally to demonstrate information missing error, so please run the app multiple times to see different results.
    func createRandomEntrantType() {
        print("Creating New Random Test Entrant...")
        print("*** Please run multiple times for different result(for either failed or successful test entrant) ***")
        print("---------------------")
        newEntrant = TestEntrants.createTestEntrantFunctions.randomElement()!
        
        guard let newEntrant = newEntrant else {
            return
        }
        
        newEntrant.information.assignInformation(on: informationTextFields)
    }
    
    // This function to check if entrant fills out all required information on text fields to create the pass.
    // It throws textFieldErrors if a required text field is empty.
    func checkNewTestEntrantMissingInformation() throws {
        var requiredTextFields: [InformationTextField] = [InformationTextField]()
        
        guard let newEntrant = newEntrant else {
            return
        }
        
        for textField in informationTextFields {
            if let requiredInformations = newEntrant.type.requiredInformation {
                for informationType in requiredInformations {
                    if textField.type == informationType {
                        requiredTextFields.append(textField)
                    }
                }
            }
        }
        
        for textField in requiredTextFields {
            if textField.text == nil {
                print("New created test entrant is a failed test entrant, missing information error alert showed on simulator.")
                throw textField.type.notProvidedError
            }
        }
        print("New created test entrant is a successful test entrant, no missing information.")
        print("---------------------")
        print("Test Entrant Type: \(newEntrant.type.rawValue)")
        print("---------------------")
        
    }
}
