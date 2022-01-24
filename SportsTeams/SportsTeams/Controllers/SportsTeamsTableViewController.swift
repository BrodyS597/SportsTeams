//
//  SportsTeamsTableViewController.swift
//  SportsTeams
//
//  Created by Brody Sears on 1/23/22.
//

import UIKit

class SportsTeamsTableViewController: UITableViewController {
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sportsTeamController.sharedInstance.arrayOfSportsTeams.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "sportsTeamCell", for: indexPath) as? SportsTeamsTableViewCell else { return UITableViewCell() }
        let sportsTeamToUpdateCell = sportsTeamController.sharedInstance.arrayOfSportsTeams[indexPath.row]
        cell.updateViews(sportsTeam: sportsTeamToUpdateCell)
        
        // Configure the cell...
        
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let deleteSportsTeam = sportsTeamController.sharedInstance.arrayOfSportsTeams[indexPath.row]
            sportsTeamController.sharedInstance.deleteSportsTeam(sportsTeamToDelete: deleteSportsTeam)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Identify; check to see if the identifier is the same as a segue we would want to send data with, if so, we will run the code in the scope, if not, pass over/ignore it.
        if segue.identifier == "toDetailVC" {
            
            //Destination; verifying if the segues destination leads to the viewController we want (BookDetailViewController) and allows access to it's properties on that viewController.
            if let destination = segue.destination as? SportsTeamsDetailViewController,
               
                //identifies a cell that was "selected"
               let indexPath = tableView.indexPathForSelectedRow {
                
                //Object to send; using the index we disocvered to retrieve the sportsTeam we want to pass along, that matches the one in our array
                let sportsTeamToPass = sportsTeamController.sharedInstance.arrayOfSportsTeams[indexPath.row]
                
                //Object to receive; sets the value of the sportsTeam? on the destination to the book we just retreived.
                destination.sportsTeam = sportsTeamToPass
            }
        }
    }
}
