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
    var name:String
    var label:String
    var color:UIColor
    var shortname:String
    
    override init() {
        self.name = ""
        self.shortname = ""
        self.label = ""
        self.color = UIColor(red:1.0, green:1.0, blue:1.0, alpha:1.0)
    }
    
    init(name:String, shortname:String, label:String, color:UIColor) {
        self.name = name
        self.shortname = shortname
        self.label = label
        self.color = color
    }

}
