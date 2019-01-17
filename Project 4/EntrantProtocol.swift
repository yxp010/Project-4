//
//  Protocol.swift
//  Project 4
//
//  Created by Yongnan Piao on 12/12/18.
//  Copyright © 2018 Spoiled Wolf. All rights reserved.
//

import Foundation

protocol Entrant {
    var type: EntrantType { get }
    var information: Information { get set }
}
