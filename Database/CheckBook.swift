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
    
    init(){
        reservation = []
    }
    func getCarsForClient(client : Client) -> [Car]{
        var carsForClient : [Car] = []
        for count in 0..<reservation.count{
            if reservation[count].2.id  == client.id {
                carsForClient.append(reservation[count].1) //Faut faire un Set
            }
        }
        return carsForClient
    }    
}
