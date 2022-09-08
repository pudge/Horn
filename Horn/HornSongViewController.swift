//
//  HornSongViewController.swift
//  Horn
//
//  Created by Chris Nandor on 2014.11.17.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import UIKit

class HornSongViewController:UIViewController, UITableViewDelegate, UITableViewDataSource {
    var singleton = HornSingleton()
    var control = Control()
    var tracks = Tracks()

    func tableView(_ tableView:UITableView, cellForRowAt:IndexPath) -> UITableViewCell {
        let CellIdentifier = "SongCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: CellIdentifier)
        }

        let track = self.tracks[cellForRowAt.row]
        cell?.textLabel?.text = track.name
        
        return cell!
    }
    
    func tableView(_ tableView:UITableView, didSelectRowAt:IndexPath) {
        let track = self.tracks[didSelectRowAt.row]
        self.singleton.song = track.shortname
        
        self.control.playTrack(track.shortname, isQuiet:self.singleton.hornQuiet)
        
        self.performSegue(withIdentifier: "unwindToRootController", sender: self)
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection:NSInteger) -> NSInteger {
        return self.tracks.count()
    }
    
    
    func numberOfSections(in tableView:UITableView) -> NSInteger {
        return 1
    }
}
