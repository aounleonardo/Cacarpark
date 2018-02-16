//
//  Car.swift
//  Cacarpark
//
//  Created by Leonardo Aoun on 2/16/18.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import Foundation


class Car {
    let identifier: Int
    let model: String
    let brand: String
    let entryOfServiceYear: Int
    let characteristics: String
    let evaluation: String
    var isFree: Bool

    init(identifier id: Int, model m: String, brand b: String, entryOfServiceYear entry: Int, characteristics c: String, evalutation e: String) {
        identifier = id
        model = m
        brand = b
        entryOfServiceYear = entry
        characteristics = c
        evaluation = e
        isFree = true
    }
}
