//
//  CarFilter.swift
//  Cacarpark
//
//  Created by Thibault Vandebrouck on 16/02/2018.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import Foundation
import UIKit


class CarFilter : NSObject, UICollectionViewDataSource, CarInfoDelegate {
    func showCarInfo(carId id: Int) {
        
        controller.showCarInfo(carId: id)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carsToReturn.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carsCollectionViewCell", for: indexPath) as? CarsCollectionViewCell
        let car = carsToReturn[indexPath.row]
        
        cell?.lbl_available.text = car.isFree ? "1" : "0"
        cell?.lbl_model.text = car.model
        cell?.lbl_brand.text = car.brand
        cell?.carId = car.identifier
        cell?.carInfoDelegate = self
        return cell!
    }
    
    
    var carsToReturn : [Car]
    var controller : CarsCollectionViewController
    init(client : Client, withController controller : CarsCollectionViewController) {
            carsToReturn = data.reservations.getCarsForClient(client: client)
        self.controller = controller
        }
    
}
