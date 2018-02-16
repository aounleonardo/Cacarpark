//
//  CarsCollectionViewCell.swift
//  Cacarpark
//
//  Created by Leonardo Aoun on 2/16/18.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import UIKit

class CarsCollectionViewCell: UICollectionViewCell {
 
    var carId = -1
    
    @IBOutlet weak var lbl_available: UILabel!
    @IBOutlet weak var lbl_rating: UILabel!
    @IBOutlet weak var lbl_model: UILabel!
    @IBOutlet weak var lbl_brand: UILabel!
    @IBOutlet weak var btn_calendar: UIButton!
    @IBOutlet weak var btn_info: UIButton!
    @IBOutlet weak var btn_delete: UIButton!
    
    var carInfoDelegate: CarInfoDelegate?
    var carReserverDelegate: CarReserverDelegate?
    
    @IBAction func btn_calendar(_ sender: UIButton) {
    }
    @IBAction func btn_info(_ sender: UIButton) {
        carInfoDelegate?.showCarInfo(carId: carId)
    }
    @IBAction func btn_delete(_ sender: UIButton) {
    }
    
    
    
}

protocol CarInfoDelegate {
    func showCarInfo(carId id: Int)
}

protocol CarReserverDelegate {
    func pickDatesForCar(carId id: Int)
}
