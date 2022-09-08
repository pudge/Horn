//
//  Control.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation

let baseURL = "http://dev.pudge.net/cgi-bin/horn.cgi";
//let baseURL = "http://__USER__:__PASSWORD__@__HOST__/cgi-bin/horn2.cgi";
let baseParams = "ajax=1&style=old";

class Control:NSObject {
    var singleton = HornSingleton()
    var session = URLSession()
    var playSound = PlaySound()
    
    func playTrack(_ name:String, isQuiet:Bool) {
        if (singleton.hornGlobal) {
            let quiet = isQuiet ? "1" : "0"
            let params = "\(baseParams)&quiet=\(quiet)&horn=dirty&song=\(name)"
            self.session.makeRequest(baseURL, with:params)
        }
    }
    
    func playHorn(_ play: Bool, team: Team, isQuiet: Bool) {
        if (singleton.hornGlobal) {
            let quiet = isQuiet ? "1" : "0"
            let withTeam = team.shortname
            let params = "\(baseParams)&\(withTeam)=1&quiet=\(quiet)&horn=on"
            self.session.makeRequest(baseURL, with:params)
        }

        if (singleton.hornLocal) {
            playSound.play()
        }
    }
    
    func stop() {
        self.session.makeRequest(baseURL, with:"horn=off&ajax=1")
        if (singleton.hornLocal) {
            playSound.stop()
        }
    }
}

