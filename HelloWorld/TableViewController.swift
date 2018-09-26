//
//  TableViewController.swift
//  HelloWorld
//
//  Created by stefano vecchiati on 18/09/2018.
//  Copyright © 2018 co.eggon. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let nomi : [String] = ["Pippo", "Pluto", "Topolino", "Minni", "Stefano", "Francesca"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let p = PrimaClasse(primo: 1, secondo: 3)
        debugPrint(p.sum(primo: 1, withSecondo: 5))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nomi.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.kidentifier, for: indexPath) as! TableViewCell
        
        cell.profilePicture.layer.cornerRadius = cell.profilePicture.frame.width / 2

        cell.nameLabel.text = nomi[indexPath.row]
        cell.profilePicture.image = UIImage(named: "Rectangle 5")
        
        

        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

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
     if segue.identifier == "name" {
        if let destinationVC = segue.destinationViewController as? Type {
     
        }
     }
     
    }
    */

}
