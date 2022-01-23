//
//  SportsTeam.swift
//  SportsTeams
//
//  Created by Brody Sears on 1/23/22.
//

import Foundation

//Creating a class called SportsTeam which is our model object
class SportsTeam {
    
    // MARK: - Properties
    var name: String
    var ranking: Double
    var playerCount: Double
    
    // MARK: - Initializer
    //Defines how to create our model object of SportsTeam
    init(name: String, ranking: Double, playerCount: Double) {
        
        //Self assigns the corresponding property to an instance of itSELF/ instance of the class SportsTeam
        self.name = name
        self.ranking = ranking
        self.playerCount = playerCount
    }
    
}// End of class
