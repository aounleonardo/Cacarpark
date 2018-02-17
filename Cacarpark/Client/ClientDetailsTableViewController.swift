//
//  ClientDetailsTableViewController.swift
//  Cacarpark
//
//  Created by Thibault Vandebrouck on 16/02/2018.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import UIKit

class ClientDetailsTableViewController: UITableViewController {
    
    var client : Client?
    
    @IBOutlet weak var lbl_firstName: UILabel!
    @IBOutlet weak var lbl_lastName: UILabel!
    @IBOutlet weak var lbl_birthDate: UILabel!
    @IBOutlet weak var lbl_address: UILabel!
    @IBOutlet weak var lbl_email: UILabel!
    @IBOutlet weak var lbl_phoneNumber: UILabel!
    @IBOutlet weak var lbl_carsHistory: UILabel!
    @IBAction func btn_Show(_ sender: UIButton) {
        if let c = client {
            let destination = storyboard?.instantiateViewController(withIdentifier: "carsCollectionViewController")as! CarsCollectionViewController
            let carFilter = CarFilter(client: c, withController: destination)
            destination.cars = carFilter.carsToReturn
            destination.navigationItem.leftBarButtonItem = nil
            show(destination, sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let c = client {
            lbl_firstName.text = c.firstName
            lbl_lastName.text = c.lastName
            lbl_email.text = c.email
            lbl_address.text = c.adress
            lbl_birthDate.text = c.birthDate
            lbl_phoneNumber.text = c.phoneNumber
            var numberOfCar = 0
            numberOfCar = data.reservations.getCarsForClient(client: c).count
            lbl_carsHistory.text = NSString(format : "%d cars rented", numberOfCar) as String
            
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
