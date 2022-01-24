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
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    var sportsTeam: SportsTeam?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews(sportsTeam: sportsTeam)
    }
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = teamNameTextField.text,
              let ranking = teamRankingTextField.text,
              let IntRanking = Int(ranking),
              let playerCount = teamPlayerCountTextField.text,
              let IntPlayerCount = Int(playerCount) else { return }
        if let sportsTeam = sportsTeam {
            sportsTeamController.sharedInstance.updateSportsTeam(SportsTeamToUpdate: sportsTeam, updatedName: name, updatedRanking: IntRanking, updatedPlayerCount: IntPlayerCount)
        }else {
            sportsTeamController.sharedInstance.createSportsTeam(name: name, ranking: IntRanking, playerCount: IntPlayerCount)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        resetView()
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        // this statment will unwrap the optional into a non optional. if the unwrapping fails, we will return from the function, if it passes, we will delete this instance of SportsTeam
        if let sportsTeam = sportsTeam {
            sportsTeamController.sharedInstance.deleteSportsTeam(sportsTeamToDelete: sportsTeam)
            navigationController?.popViewController(animated: true)
        }
    }
    
    // MARK: - Helper functions
    
    func updateViews(sportsTeam: SportsTeam?) {
        clearButton.layer.cornerRadius = 8
        deleteButton.layer.cornerRadius = 8
        guard let sportsTeam = sportsTeam else { return }
        teamNameTextField.text = sportsTeam.name
        teamRankingTextField.text = "\(sportsTeam.ranking)"
        teamPlayerCountTextField.text = "\(sportsTeam.playerCount)"
    }
    
    func resetView() {
        teamNameTextField.text = ""
        teamRankingTextField.text = ""
        teamPlayerCountTextField.text = ""
    }
    
    
}// End of class
