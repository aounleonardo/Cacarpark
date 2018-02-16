//
//  AddCarTableViewController.swift
//  Cacarpark
//
//  Created by Leonardo Aoun on 2/16/18.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import UIKit

class AddCarTableViewController: UITableViewController {

    @IBOutlet weak var txf_brand: UITextField!
    @IBOutlet weak var txf_model: UITextField!
    @IBOutlet weak var txf_entryOfServiceYear: UITextField!
    @IBOutlet weak var txf_characteristics: UITextField!
    @IBOutlet weak var txf_evaluation: UITextField!
    @IBOutlet weak var btn_validate: UIButton!
    
    @IBAction func btn_validate(_ sender: UIButton) {
        data.addCar(model: txf_model.text ?? "x", brand: txf_brand.text ?? "x", entryOfServiceYear: Int(txf_entryOfServiceYear.text ?? "0")!, characteristics: txf_characteristics.text ?? "x", evaluation: txf_evaluation.text ?? "x")
        
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
