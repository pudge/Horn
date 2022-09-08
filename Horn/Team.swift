//
//  Team.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation
import UIKit

class Team:NSObject {
//x?    var playSound = PlaySound()

    var name:String
    var label:String
    var color:UIColor
    var shortname:String
//x    var sound:URL
    
    override init() {
        self.name = ""
        self.shortname = ""
        self.label = ""
        self.color = UIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0)
//x        self.sound = URL(fileURLWithPath: Bundle.main.path(forResource: "BruinsHornOld", ofType: "mp3")!)
    }
    
    init(name:String, shortname:String, label:String, color:UIColor) {//x}, sound:URL) {
        self.name = name
        self.shortname = shortname
        self.label = label
        self.color = color
//x        self.sound = sound
    }
}
