//
//  SportsTeamsDetailViewController.swift
//  SportsTeams
//
//  Created by Brody Sears on 1/23/22.
//

import UIKit

class SportsTeamsDetailViewController: UIViewController {

// MARK: - Outlets
    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var teamRankingTextField: UITextField!
    @IBOutlet weak var teamPlayerCountTextField: UITextField!
    
    var sportsTeam: SportsTeam?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
    }
    

   

}// End of class
