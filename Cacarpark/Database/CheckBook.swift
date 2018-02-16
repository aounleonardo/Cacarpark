//
//  CheckBook.swift
//  Cacarpark
//
//  Created by Thibault Vandebrouck on 16/02/2018.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import Foundation

class CheckBook {
    var reservation : [(car: Car, client : Client)]
    
    init(myTuples : [(car: Car, client : Client)]){
        reservation = myTuples
    }
    func getCarsForClient(client : Client) -> [Car]{
        var carsForClient : [Car] = []
        for count in 0..<reservation.count{
            if reservation[count].1.identifier  == client.identifier {
                carsForClient.append(reservation[count].0) //Faut faire un Set
            }
        }
        return carsForClient
    }    
}
