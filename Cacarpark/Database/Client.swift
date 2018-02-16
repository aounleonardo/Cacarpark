//
//  Client.swift
//  Cacarpark
//
//  Created by Thibault Vandebrouck on 16/02/2018.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import Foundation

class Client {
    var firstName : String
    var lastName : String
    var birthDate : String
    var adress : String
    var email : String
    var phoneNumber : String
    var identifier : Int
    
    init(identifier id : Int, firstName fn : String, lastName ln : String, birthDate bd : String, adress a : String, email e : String, phoneNumber p : String){
        firstName = fn
        lastName = ln
        birthDate = bd
        adress = a
        email = e
        phoneNumber = p
        identifier = id
    }
}
