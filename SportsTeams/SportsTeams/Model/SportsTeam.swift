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
    var ranking: Int
    var playerCount: Int
    
    // MARK: - Initializer
    //Defines how to create our model object of SportsTeam
    init(name: String, ranking: Int, playerCount: Int) {
        
        //Self assigns the corresponding property to an instance of itSELF/ instance of the class SportsTeam
        self.name = name
        self.ranking = ranking
        self.playerCount = playerCount
    }
    
}// End of class

// MARK: - Extension

//This is an extension of our model object to further its functionality and conform to equatable
extension SportsTeam: Equatable {
    static func == (lhs: SportsTeam, rhs: SportsTeam) -> Bool {
        lhs.name == rhs.name &&
        lhs.ranking == rhs.ranking &&
        lhs.playerCount == rhs.playerCount
    }
    
}// end of extension
