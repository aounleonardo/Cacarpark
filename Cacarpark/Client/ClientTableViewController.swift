//
//  ClientTableViewController.swift
//  Cacarpark
//
//  Created by Thibault Vandebrouck on 16/02/2018.
//  Copyright © 2018 Leonardo Aoun. All rights reserved.
//

import UIKit

class ClientTableViewController: UITableViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
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

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.clients.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellSelected = tableView.cellForRow(at: indexPath) as? ClientTableViewCell
        let clientId = cellSelected?.idClient
        print(clientId!)
        let clientSelected : Client? = data.clientForId(id : clientId!)
        let controller = storyboard?.instantiateViewController(withIdentifier: "ClientDetails") as? ClientDetailsTableViewController
        controller?.client = clientSelected!
        show(controller!, sender: self)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
<<<<<<< HEAD
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClientTableViewCell", for: indexPath) as? ClientTableViewCell
        cell?.lbl_firstName.text = clients[indexPath.row].firstName
        cell?.lbl_lastName.text = clients[indexPath.row].lastName
        cell?.lbl_email.text = clients[indexPath.row].email
        cell?.idClient = clients[indexPath.row].identifier
=======
        let cell = tableView.dequeueReusableCell(withIdentifier: "clientTableViewCell", for: indexPath) as? ClientTableViewCell
        cell?.lbl_firstName.text = data.clients[indexPath.row].firstName
        cell?.lbl_lastName.text = data.clients[indexPath.row].lastName
        cell?.lbl_email.text = data.clients[indexPath.row].email
        cell?.idClient = data.clients[indexPath.row].identifier
>>>>>>> 219b346bb1e955bc8230a473332b4e6c82bfce32
        return cell!
    }

}
