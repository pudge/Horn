//
//  Control.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation

let baseURL = "http://__USER__:__PASSWORD__@__HOST__/cgi-bin/horn2.cgi";
let baseParams = "ajax=1&style=old";

class Control:NSObject {
    var session = URLSession()
    
    func playTrack(name:String, isQuiet:Bool) {
        var quiet = isQuiet ? "1" : "0"
        var params = "\(baseParams)&quiet=\(quiet)&horn=dirty&song=\(name)"
        self.session.makeRequest(baseURL, with:params)
    }
    
    func playHorn(play: Bool, withTeam: String, isQuiet: Bool) {
        var quiet = isQuiet ? "1" : "0"
        var params = "\(baseParams)&\(withTeam)=1&quiet=\(quiet)&horn=on"
        self.session.makeRequest(baseURL, with:params)
    }
    
    func stop() {
        self.session.makeRequest(baseURL, with:"horn=off&ajax=1")
    }
}

