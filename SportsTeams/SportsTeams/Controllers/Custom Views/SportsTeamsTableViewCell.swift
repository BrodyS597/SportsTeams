//
//  SportsTeamsTableViewCell.swift
//  SportsTeams
//
//  Created by Brody Sears on 1/23/22.
//

import UIKit

class SportsTeamsTableViewCell: UITableViewCell {

    @IBOutlet weak var sportsTeamNameLabel: UILabel!
    @IBOutlet weak var sportsTeamRankingLabel: UILabel!
    @IBOutlet weak var sportsTeamPlayerCountLabel: UILabel!
    
    func updateViews(sportsTeam: SportsTeam) {
        sportsTeamNameLabel.text = sportsTeam.name
        sportsTeamRankingLabel.text = String(sportsTeam.ranking)
        sportsTeamPlayerCountLabel.text = String(sportsTeam.playerCount)

}
    
}//End of class
