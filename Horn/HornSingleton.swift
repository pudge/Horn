//
//  HornSingleton.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation

let defaults = NSUserDefaults.standardUserDefaults()

class HornSingleton:NSObject {
    var hornQuiet:Bool {
        set {
            defaults.setBool(newValue, forKey: "hornQuiet")
            defaults.synchronize()
        }
        get {
            return defaults.boolForKey("hornQuiet")
        }
    }

    var teamIndex:Int {
        set {
            defaults.setInteger(newValue, forKey: "teamIndex")
            defaults.synchronize()
        }
        get {
            return defaults.integerForKey("teamIndex")
        }
    }

    var song:String {
        set {
            defaults.setObject(newValue, forKey: "song")
            defaults.synchronize()
        }
        get {
            return defaults.stringForKey("song") ?? ""
        }
    }
}
