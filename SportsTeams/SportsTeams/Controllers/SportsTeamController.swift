//
//  SportsTeamController.swift
//  SportsTeams
//
//  Created by Brody Sears on 1/23/22.
//

import Foundation

class sportsTeamController {
    
    // MARK: - our SOURCE OF TRUTH
    var arrayOfSportsTeams: [SportsTeam] = []
    
    
static let sharedInstance = sportsTeamController()
    
    // MARK: - CRUD FUNCS
    
    // this line defines a function which will return an instance of our model object SportsTeam
    func createSportsTeam(name: String, ranking: Double, playerCount: Double) {
        
        //calling the function, more specifically, we are calling our designated initializer function on the SportsTeams class
        let newSportsTeam = SportsTeam(name: name, ranking: ranking, playerCount: playerCount)
        arrayOfSportsTeams.append(newSportsTeam)
    }
    
    func updateSportsTeam(SportsTeamToUpdate: SportsTeam, updatedName: String, updatedRanking: Double, updatedPlayerCount: Double) {
        
        //We are assigning the new values that were passed into our update function to the corresponding values on the SportsTeam
        SportsTeamToUpdate.name = updatedName
        SportsTeamToUpdate.ranking = updatedRanking
        SportsTeamToUpdate.playerCount = updatedPlayerCount
    }
    
    //This line defines a function to delete a SportsTeam from the source of truth that was passed into the function
    func deleteSportsTeam(sportsTeamToDelete: SportsTeam) {
        
        //this line uses equatable to find the first index in the array, where the object value matches the book passed in to the firstIndex(where...)
        guard let indexOfSportsTeams = arrayOfSportsTeams.firstIndex(where: {$0 == sportsTeamToDelete}) else { return }
        arrayOfSportsTeams.remove(at: indexOfSportsTeams)
    }
    
    
}// End of class
