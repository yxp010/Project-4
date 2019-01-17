//
//  InformationTextField.swift
//  Project 4
//
//  Created by Yongnan Piao on 12/21/18.
//  Copyright © 2018 Spoiled Wolf. All rights reserved.
//

import UIKit

// This class is acting as UITextField, each text field has a information type. Each entrant type has own required information types like free child guest needs information type of date of birth, so the text field itself can check if the entrant's required informtion is empty.
class InformationTextField {
    var text: String?
    let type: InformationType

    init(type: InformationType) {
        self.type = type
    }
}
