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

    func getTeamByIndex(idx:Int) -> Team {
        return teams[idx]
    }

    func initTeams() {
        if (teams.isEmpty) {
            teams.append(Team(
                name:       "New England Patriots",
                shortname:  "patriots",
                label:      "Patriots",
                color:      UIColor(red:0.04296875, green:0.13671875, blue:0.3046875, alpha:1) // 11, 35, 78
            ))

            teams.append(Team(
                name:       "Boston Red Sox",
                shortname:  "redsox",
                label:      "Red Sox",
                color:      UIColor(red:0.09765625, green:0.20703125, blue:0.32421875, alpha:1) // 25, 53, 83
            ))

            teams.append(Team(
                name:       "Boston Bruins",
                shortname:  "bruins",
                label:      "Bruins",
                color:      UIColor(red:0, green:0, blue:0, alpha:1)
            ))
            
            teams.append(Team(
                name:       "Boston Celtics",
                shortname:  "celtics",
                label:      "Celtics",
                color:      UIColor(red:0, green:0.515625, blue:0.27734375, alpha:1) // 0, 132, 71
            ))
                
            teams.append(Team(
                name:       "USA",
                shortname:  "usa",
                label:      "USA",
                color:      UIColor(red:0.0390625, green:0.0625, blue:0.33984375, alpha:1) // 10, 16, 87
            ))
            
            teams.append(Team(
                name:       "F1",
                shortname:  "f1",
                label:      "Mercedes F1",
                color:      UIColor(red:0, green:0, blue:0, alpha:1)
            ))
        }
    }
}
