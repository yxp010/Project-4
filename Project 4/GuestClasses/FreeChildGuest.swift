//
//  FreeChildGuest.swift
//  Project 4
//
//  Created by Yongnan Piao on 1/17/19.
//  Copyright © 2019 Spoiled Wolf. All rights reserved.
//

import Foundation

class FreeChildGuest: Guest {
    
    init() {
        super.init(type: .freeChildGuest)
    }
    
    convenience init(dateOfBirth: String? = nil) {
        self.init()
        self.information.dateOfBirth = dateOfBirth
    }
}
