//
//  VipGuest.swift
//  Project 4
//
//  Created by Yongnan Piao on 1/17/19.
//  Copyright © 2019 Spoiled Wolf. All rights reserved.
//

import Foundation

class VipGuest: Guest {
    var foodDiscount: Int = 10
    var merchandiseDiscount: Int = 20
    
    init() {
        super.init(type: .vipGuest)
    }
    
}
