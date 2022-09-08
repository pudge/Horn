//
//  Teams.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation
import UIKit

var teams:[Team] = []

class Teams:NSObject {

    override init() {
        super.init()
        self.initTeams()
    }

    func getTeamByIndex(_ idx:Int) -> Team {
        //self.initTeams()
        return teams[idx]
    }
    
    func getTeamCount() -> Int {
        //self.initTeams()
        return teams.count
    }
    
    func initTeams() {
        if (teams.isEmpty) {
//x            let playSound = PlaySound()
            teams.append(Team(
                name:       "New England Patriots",
                shortname:  "patriots",
                label:      "Patriots",
                color:      UIColor(red:(11/255), green:(35/255), blue:(78/255), alpha:1)
            ))

//            teams.append(Team(
//                name:       "Boston Red Sox",
//                shortname:  "redsox",
//                label:      "Red Sox",
//                color:      UIColor(red:(25/255), green:(53/255), blue:(83/255), alpha:1)
//            ))

            teams.append(Team(
                name:       "Boston Bruins",
                shortname:  "bruins",
                label:      "Bruins",
                color:      UIColor(red:0, green:0, blue:0, alpha:1)
              ))

//            teams.append(Team(
//                name:       "Boston Celtics",
//                shortname:  "celtics",
//                label:      "Celtics",
//                color:      UIColor(red:0, green:(132/255), blue:(71/255), alpha:1)
//            ))

            teams.append(Team(
                name:       "Mercedes F1",
                shortname:  "f1",
                label:      "Mercedes F1",
                color:      UIColor(red:0, green:0, blue:0, alpha:1)
            ))

            teams.append(Team(
                name:       "Sioux Falls Flyers",
                shortname:  "sfflyers",
                label:      "Flyers",
                color:      UIColor(red:(58/255), green:(64/255), blue:(80/255), alpha:1)
            ))

            teams.append(Team(
                name:       "Team South Dakota",
                shortname:  "teamsd",
                label:      "Team SD",
                color:      UIColor(red:(177/255), green:(38/255), blue:(27/255), alpha:1)
            ))

//            teams.append(Team(
//                name:       "SJHA",
//                shortname:  "sjha",
//                label:      "SJHA",
//                color:      UIColor(red:(205/255), green:(31/255), blue:(67/255), alpha:1)
//            ))

//            teams.append(Team(
//                name:       "USA",
//                shortname:  "usa",
//                label:      "USA",
//                color:      UIColor(red:0.0390625, green:0.0625, blue:0.33984375, alpha:1) // 10, 16, 87
//            ))

//            teams.append(Team(
//                name:       "Seattle Yeti",
//                shortname:  "yeti",
//                label:      "Yeti",
//                color:      UIColor(red:(7/255), green:0, blue:(35/255), alpha:1),
//                sound:      playSound.goodSound
//            ))

//            teams.append(Team(
//                name:       "Boston University Terriers",
//                shortname:  "terriers",
//                label:      "Terriers",
//                color:      UIColor(red:0.8588235294, green:0, blue:0.1607843137, alpha:1), // 87, 196, 15
//                sound:      playSound.goodSound
//            ))


//            teams.append(Team(
//                name:       "St. Louis Blues",
//                shortname:  "blues",
//                label:      "Blues",
//                color:      UIColor(red:0, green:(47/255), blue:(135/255), alpha:1),
//                sound:      playSound.bluesSound
//            ))
//
//            teams.append(Team(
//                name:       "San Jose Sharks",
//                shortname:  "sharks",
//                label:      "Sharks",
//                color:      UIColor(red:0, green:0.4705882353, blue:0.537254902, alpha:1),
//                sound:      playSound.goodSound
//            ))
//
//            teams.append(Team(
//                name:       "Seahawks",
//                shortname:  "hawks",
//                label:      "Hawks",
//                color:      UIColor(red:(87/255), green:(196/255), blue:(15/255), alpha:1), // 87, 196, 15
//                sound:      playSound.badSound!
//            ))

        }
    }
}
