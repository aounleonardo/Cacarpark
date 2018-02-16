//
//  Data.swift
//  Cacarpark
//
//  Created by Leonardo Aoun on 2/16/18.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import Foundation

var data = Data()

class Data {
    var cars = [
        Car(identifier: 0, model: "Tiida", brand: "Nissan", entryOfServiceYear: 2014, characteristics: "None", evalutation: "Good"),
        Car(identifier: 1, model: "Lancer", brand: "Mitsubishi", entryOfServiceYear: 2015, characteristics: "None", evalutation: "Good"),
        Car(identifier: 2, model: "Cherokee", brand: "Jeep", entryOfServiceYear: 2009, characteristics: "None", evalutation: "Good"),
    ]
    
    var carId = 3
    
    func addCar(model m: String, brand b: String, entryOfServiceYear entry: Int, characteristics c: String, evaluation e: String) {
        cars.append(Car(identifier: carId, model: m, brand: b, entryOfServiceYear: entry, characteristics: c, evalutation: e))
        carId += 1
    }
    
    func car(forId id: Int) -> Car? {
        let filetered = cars.filter() {$0.identifier == id}
        return filetered[0]
    }
}
