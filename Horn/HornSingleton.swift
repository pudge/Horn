//
//  HornSingleton.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation

let defaults = UserDefaults.standard

class HornSingleton:NSObject {
    var hornQuiet:Bool {
        set {
            defaults.set(newValue, forKey: "hornQuiet")
            defaults.synchronize()
        }
        get {
            return defaults.bool(forKey: "hornQuiet")
        }
    }
    
    var hornLocal:Bool {
        set {
            defaults.set(newValue, forKey: "hornLocal")
            defaults.synchronize()
        }
        get {
            return defaults.bool(forKey: "hornLocal")
        }
    }
    
    var hornGlobal:Bool {
        set {
            defaults.set(newValue, forKey: "hornGlobal")
            defaults.synchronize()
        }
        get {
            return defaults.bool(forKey: "hornGlobal")
        }
    }
    
    var teamIndex:Int {
        set {
            defaults.set(newValue, forKey: "teamIndex")
            defaults.synchronize()
        }
        get {
            return defaults.integer(forKey: "teamIndex")
        }
    }

    var song:String {
        set {
            defaults.set(newValue, forKey: "song")
            defaults.synchronize()
        }
        get {
            return defaults.string(forKey: "song") ?? ""
        }
    }
}
