//
//  CarDetailsTableViewController.swift
//  Cacarpark
//
//  Created by Leonardo Aoun on 2/16/18.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import UIKit

class CarDetailsTableViewController: UITableViewController {
    
    var car: Car?

    @IBOutlet weak var lbl_model: UILabel!
    @IBOutlet weak var lbl_brand: UILabel!
    @IBOutlet weak var lbl_entryOfServiceYear: UILabel!
    @IBOutlet weak var lbl_characteristics: UILabel!
    @IBOutlet weak var lbl_evaluation: UILabel!
    @IBOutlet weak var lbl_disponibility: UILabel!
    @IBOutlet weak var btn_reserve: UIButton!
    
    @IBAction func btn_reserve(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let c = car {
            lbl_model.text = c.model
            lbl_brand.text = c.brand
            lbl_entryOfServiceYear.text = String(c.entryOfServiceYear)
            lbl_characteristics.text = c.characteristics
            lbl_evaluation.text = c.evaluation
            
            lbl_disponibility.text = c.isFree ? "1" : "0"
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
