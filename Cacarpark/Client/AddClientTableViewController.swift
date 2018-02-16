//
//  AddClientTableViewController.swift
//  Cacarpark
//
//  Created by Leonardo Aoun on 2/16/18.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import UIKit

class AddClientTableViewController: UITableViewController {

    @IBOutlet weak var txf_firstName: UITextField!
    @IBOutlet weak var txf_lastName: UITextField!
    @IBOutlet weak var txf_phone: UITextField!
    @IBOutlet weak var txf_bday: UITextField!
    @IBOutlet weak var txf_address: UITextField!
    @IBOutlet weak var txf_email: UITextField!
    @IBOutlet weak var btn_validate: UIButton!
    
    @IBAction func btn_validate(_ sender: UIButton) {
        data.addClient(firstName: txf_firstName.text ?? "x", lastName: txf_lastName.text ?? "x", birthDate: txf_bday.text ?? "x", address: txf_address.text ?? "x", email: txf_email.text ?? "x", phoneNumber: txf_phone.text ?? "x")
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
