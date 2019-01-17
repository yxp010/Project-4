//
//  ViewController.swift
//  Project 4
//
//  Created by Yongnan Piao on 12/12/18.
//  Copyright © 2018 Spoiled Wolf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let testEntrantGenerator: TestEtrantGenerator = TestEtrantGenerator()
    let swipeMachine: SwipeMachine = SwipeMachine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        showResult()
    }
    
    // This function run both 'testEntrantGenerator.checkNewTestEntrantMissingInformation()' method and 'swipeMachine.swipe(entrant: testEntrantGenerator.newEntrant, at: Areas.random())' method, catch errors and present alert according to the error.
    // Shows all the results on the console.
    // Please run multiple times to see different result since the test entrant is created randomly(it could be all types and either successful or failed which is missing information to demonstrate errors).
    func showResult() {
        do {
            
            try testEntrantGenerator.checkNewTestEntrantMissingInformation()
            try swipeMachine.swipe(entrant: testEntrantGenerator.newEntrant, at: Areas.random())
            
        } catch TextFieldError.typeOfPassNotSelected {
            presentAlertWith(title: TextFieldError.typeOfPassNotSelected.alertTitle, message: TextFieldError.typeOfPassNotSelected.alertMessage)
        } catch TextFieldError.dateOfBirthNotProvided {
            presentAlertWith(title: TextFieldError.dateOfBirthNotProvided.alertTitle, message: TextFieldError.dateOfBirthNotProvided.alertMessage)
        } catch TextFieldError.dateOfVisitNotProvided {
            presentAlertWith(title: TextFieldError.dateOfVisitNotProvided.alertTitle, message: TextFieldError.dateOfVisitNotProvided.alertMessage)
        } catch TextFieldError.firstNameNotProvided {
            presentAlertWith(title: TextFieldError.firstNameNotProvided.alertTitle, message: TextFieldError.firstNameNotProvided.alertMessage)
        } catch TextFieldError.lastNameNotProvided {
            presentAlertWith(title: TextFieldError.lastNameNotProvided.alertTitle, message: TextFieldError.lastNameNotProvided.alertMessage)
        } catch TextFieldError.companyNotProvided {
            presentAlertWith(title: TextFieldError.companyNotProvided.alertTitle, message: TextFieldError.companyNotProvided.alertMessage)
        } catch TextFieldError.streetAddressNotProvided {
            presentAlertWith(title: TextFieldError.streetAddressNotProvided.alertTitle, message: TextFieldError.streetAddressNotProvided.alertMessage)
        } catch TextFieldError.cityNotProvided {
            presentAlertWith(title: TextFieldError.cityNotProvided.alertTitle, message: TextFieldError.cityNotProvided.alertMessage)
        } catch TextFieldError.stateNotProvided {
            presentAlertWith(title: TextFieldError.stateNotProvided.alertTitle, message: TextFieldError.stateNotProvided.alertMessage)
        } catch TextFieldError.zipCodeNotProvided {
            presentAlertWith(title: TextFieldError.zipCodeNotProvided.alertTitle, message: TextFieldError.zipCodeNotProvided.alertMessage)
        } catch SwipeError.accessDenied {
            presentAlertWith(title: "Access Denied", message: "The type of pass is not allowed for this area.")
        } catch SwipeError.swipeAgainInLessThanFiveSeconds {
            presentAlertWith(title: "Swipe Too Soon", message: "Please try to swipe again in \(5 - swipeMachine.fiveSecondsInterval) seconds")
        } catch let error {
            fatalError("\(error.localizedDescription)")
        }
    }
    
    // helper function to easily present alert.
    func presentAlertWith(title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
}

