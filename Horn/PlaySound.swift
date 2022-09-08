//
//  PlaySound.swift
//  Horn
//
//  Created by Chris Nandor on 2015.01.31.
//  Copyright (c) 2015 Pudge.Net. All rights reserved.
//

import Foundation
import AVFoundation


// fix this it's ugly
class PlaySound:NSObject {
    let goodSound = Bundle.main.path(forResource: "BruinsHornOld", ofType: "mp3")
    var goodPlayer: AVAudioPlayer?

    override init() {
        super.init()

        do {
            goodPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: goodSound!))
        }
        catch {
            print(error)
        }
    }
    
    func play() { //_ sound:URL) {
        goodPlayer!.prepareToPlay()
        goodPlayer!.numberOfLoops = 0
        goodPlayer!.play()
    }

    func stop() {
        if (goodPlayer!.isPlaying) {
            goodPlayer!.stop()
        }
    }
}
