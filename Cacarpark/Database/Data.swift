//
//  Data.swift
//  Cacarpark
//
//  Created by Leonardo Aoun on 2/16/18.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import Foundation

var nissanT = Car(identifier: 0, model: "Tiida", brand: "Nissan", entryOfServiceYear: 2014, characteristics: "None", evalutation: "Good")
var mitsubishiL = Car(identifier: 1, model: "Lancer", brand: "Mitsubishi", entryOfServiceYear: 2015, characteristics: "None", evalutation: "Good")
var jeepC = Car(identifier: 2, model: "Cherokee", brand: "Jeep", entryOfServiceYear: 2009, characteristics: "None", evalutation: "Good")

var aounL = Client(identifier: 0, firstName: "Leo", lastName : "Aoun" , birthDate: "01/01/1990", adress: "Route Louis Favre, 4", email: "aoun.aoun@aoun.com ", phoneNumber: "0123456789")
var duvieusartA = Client(identifier: 1, firstName: "Arnaud", lastName: "Duvieusart", birthDate: "11/01/1997", adress: "Chambre C502", email: "myEmail@email.com", phoneNumber: "0143526783")
var ieneP = Client(identifier: 2, firstName: "Paolo", lastName: "Iene", birthDate: "12/12/1912", adress: "Hell", email: "archord.processeur@vhdl.com", phoneNumber: "0011223344")


var data = Data()

class Data {
    var cars = [
        nissanT, mitsubishiL, jeepC
    ]
    
    var clients = [
        aounL, duvieusartA, ieneP
    ]
    var reservations : CheckBook = CheckBook.init(myTuples: [(nissanT,aounL),(nissanT,duvieusartA),(jeepC, ieneP),(mitsubishiL,ieneP)])
    
    var carId = 3
    var clientId = 3
    
    func addCar(model m: String, brand b: String, entryOfServiceYear entry: Int, characteristics c: String, evaluation e: String) {
        cars.append(Car(identifier: carId, model: m, brand: b, entryOfServiceYear: entry, characteristics: c, evalutation: e))
        carId += 1
    }
    
    func addClient(firstName fn : String, lastName ln : String, birthDate bd : String, address a : String, email e : String, phoneNumber p : String) {
        clients.append(Client(identifier: clientId, firstName: fn, lastName: ln, birthDate: bd, adress: a, email: e, phoneNumber: p))
        clientId += 1
    }
    
    
    func car(forId id: Int) -> Car? {
        let filtered = cars.filter() {$0.identifier == id}
        return filtered[0]
    }
    
    func clientForId(id : Int) -> Client? {
        let filtered = clients.filter(){$0.identifier == id}
        return filtered[0]

    }
}
