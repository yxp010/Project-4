//
//  Swipe.swift
//  Project 4
//
//  Created by Yongnan Piao on 12/28/18.
//  Copyright © 2018 Spoiled Wolf. All rights reserved.
//
import UIKit
import Foundation

class SwipeMachine {
    // MARK: - Properties
    // Has these properties to limit this machine cannot be swiped again in 5 seconds.
    var fiveSecondsInterval: Int = 0
    var swipeCount: Int = 0
    var timer: Timer!
    
    init() {
        
    }
    
    // MARK: - SwipeMethod
    
    // swipe a entrant pass in an area to check if it's accessable. if the pass is not accessable for the area, this function throws a SwipeError.accessDenied error.
    // if swipe twice between 5 seconds, the function also throws a SwipeError.swipeAgainInLessThanFiveSeconds error.
    
    func swipe(entrant: Entrant?,at area: Areas) throws {
        if fiveSecondsInterval < 5 && swipeCount != 0 {
            throw SwipeError.swipeAgainInLessThanFiveSeconds
        }
        
        swipeCount += 1
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCount), userInfo: nil, repeats: true)
        
        guard let entrant = entrant else {
            print("Application Failed")
            return
        }
        
        print("Swiping...")
        print("---------------------")
        print("Trying to enter Area: \(area.rawValue).")
        print("---------------------")
        print("Entrant's Accessable Areas:")
        for area in entrant.type.accessableAreas {
            print(area.rawValue)
        }
        print("---------------------")
        print("Entrant's Ride Access:")
        for privilege in entrant.type.privileges {
            print(privilege.rawValue)
        }
        print("---------------------")
        print("Entrant's Information:")
        entrant.information.printOutInformation()
        print("---------------------")
        
        if let birthday = entrant.information.dateOfBirth {
            
            let formatter = DateFormatter()
            formatter.dateFormat = "MM/dd/yyyy"
            
            let today = Date()
            
            if birthday.prefix(5) == formatter.string(from: today).prefix(5) {
                print("Today is the entrant's birthday.")
            } else {
                print("Today is not the entrant's birthday.")
            }
            print("---------------------")
        }
        if entrant.type.accessableAreas.contains(area) {
            print("Access is allowed.")
            print("---------------------")
            if entrant.type.privileges.contains(Privilege.skiplinable) {
                print("The entrant can skip the line.")
            }
            
            // discount information only shows only when the access is allowed.
            print("The entrant has \(entrant.type.discounts)")
            print("---------------------")
        } else {
            print("Access denied, alert showed on app.")
            print("---------------------")
            throw SwipeError.accessDenied
        }
    }
    
    // MARK: - Helper Funtions
    @objc func timeCount() {
        fiveSecondsInterval += 1
        print(fiveSecondsInterval)
        if fiveSecondsInterval >= 5 {
            timer.invalidate()
            print("The machine is ready to swipe again.")
            fiveSecondsInterval = 0
        }
    }
    
}

