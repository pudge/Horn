//
//  Track.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation

class Track:NSObject {
    var name:String
    var shortname:String

    init(name:String, shortname:String) {
        self.name = name
        self.shortname = shortname
    }
}
