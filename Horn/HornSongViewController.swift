//
//  HornSongViewController.swift
//  Horn
//
//  Created by Chris Nandor on 2014.11.17.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import UIKit

class HornSongViewController:UIViewController {
    var singleton = HornSingleton()
    var control = Control()
    var tracks = Tracks()

    func tableView(tableView:UITableView, cellForRowAtIndexPath:NSIndexPath) -> UITableViewCell {
        var CellIdentifier = "SongCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as UITableViewCell?
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: CellIdentifier)
        }

        var track = self.tracks[cellForRowAtIndexPath.row]
        cell?.textLabel?.text = track.name
        
        return cell!
    }
    
    func tableView(tableView:UITableView, didSelectRowAtIndexPath:NSIndexPath) {
        var track = self.tracks[didSelectRowAtIndexPath.row]
        self.singleton.song = track.shortname
        
        self.control.playTrack(track.shortname, isQuiet:self.singleton.hornQuiet)
        
        self.performSegueWithIdentifier("unwindToRootController", sender: self)
    }
    
    func tableView(tableView:UITableView, numberOfRowsInSection:NSInteger) -> NSInteger {
        return self.tracks.count()
    }
    
    
    func numberOfSectionsInTableView(tableView:UITableView) -> NSInteger {
        return 1
    }
}
