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


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
