//
//  Planet.swift
//  SolarSystem
//
//  Created by Wesley Austin on 8/18/16.
//  Copyright © 2016 Wesley Austin. All rights reserved.
//

import Foundation

class Planet {
    let name: String
    let diameter: Int
    let dayLength: Double
    let millionKMsFromSun: Double
    
    init(name: String, diameter: Int, dayLength: Double, millionKMsFromSun: Double) {
        self.name = name
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
    }
}