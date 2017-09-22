//
//  UIButtonExt.swift
//  gol-app
//
//  Created by Alex Villacres on 9/22/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.4827913046, green: 0.8765851855, blue: 0.6139497757, alpha: 0.5)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.4827913046, green: 0.8765851855, blue: 0.6139497757, alpha: 1)
    }
}
