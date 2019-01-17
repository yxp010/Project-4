//
//  Employee.swift
//  Project 4
//
//  Created by Yongnan Piao on 12/12/18.
//  Copyright © 2018 Spoiled Wolf. All rights reserved.
//

import Foundation

class Employee: Entrant {
    var information: Information = Information()
    
    var type: EntrantType
    
    init(type: EntrantType) {
        self.type = type
    }
}









