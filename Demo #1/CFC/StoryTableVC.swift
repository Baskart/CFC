//
//  StoryTableVC.swift
//  CFC
//
//  Created by Baskaran Thanigaimani (Digital) on 31/05/17.
//  Copyright © 2017 Baskaran Thanigaimani (Digital). All rights reserved.
//

import UIKit

class StoryTableVC: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
       self.navigationController?.navigationBar.isHidden = true
    }

    override func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        self.navigationController?.navigationBar.isHidden = false
        //self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.09, green:0.02, blue:0.64, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = UIColor.blue
        self.navigationController?.title = "Fan Stories"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
    }
    
    override func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
  /* override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.blue
    } 
 */
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.imageView?.image = UIImage(named: "p1")
        // Configure the cell...
        return cell
        */
        
        switch indexPath.row {
        case 0:
            print("First row images")
            let cell =  tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FIrstTableCell
           // cell.imageView?.image = UIImage(named: "p1")
            return cell
        case 1:
            print("Second Row images")
            let fcell =  tableView.dequeueReusableCell(withIdentifier: "FCell", for: indexPath) as! SecondTableCell
            fcell.sfimg?.image = UIImage(named: "p2")
            fcell.ssimg?.image = UIImage(named: "p3")
            fcell.stimg?.image = UIImage(named: "p4")
            return fcell
        case 2:
            print("Third Row images")
            let cell = tableView.dequeueReusableCell(withIdentifier: "SCell", for: indexPath) as! ThirdTableCell
            cell.tfimg?.image = UIImage(named: "2p4")
            cell.tsimg?.image = UIImage(named: "2p5")
            return cell
        default:
            print("No Worries")
            
        return UITableViewCell()
        }
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detail", sender: cell)
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
