//
//  Tracks.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation

var tracks:[Track] = []

class Tracks:NSObject {
    override init() {
        super.init()
        self.initTracks()
    }
    
    subscript(idx:Int) -> (Track) {
        return tracks[idx]
    }

    func count()->Int {
        return tracks.count
    }

    func initTracks() {
        if (tracks.isEmpty) {
            tracks.append(Track(name: "I'm Shipping Up to Boston", shortname: "shippingup"))
            tracks.append(Track(name: "Crazy Train", shortname: "crazytrain"))
            tracks.append(Track(name: "Tessie", shortname: "tessie"))
            tracks.append(Track(name: "Caroline", shortname: "caroline"))
            tracks.append(Track(name: "Nutty", shortname: "nutty"))
            tracks.append(Track(name: "Higher and Higher", shortname: "higher"))
            tracks.append(Track(name: "We Are The Champions", shortname: "wearechamps"))
            tracks.append(Track(name: "Fight on the Ice", shortname: "fightonice"))
            tracks.append(Track(name: "Breakaway", shortname: "breakaway"))
            tracks.append(Track(name: "Shot Score!", shortname: "shotscore"))
        }
    }
}
