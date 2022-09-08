//
//  HornTVViewController.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.04.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import UIKit
//import WatchConnectivity

class HornTVViewController: UIViewController { // , WCSessionDelegate
//    var session: WCSession!
    
    var singleton = HornSingleton()
    
    var control = Control()
    var teams = Teams()
    var team:Team = Team()
    
    @IBOutlet weak var hornButton: UIButton!
//    @IBOutlet weak var teamSegment: UISegmentedControl!
    
    @IBAction func pressHornButton(sender: UIButton) {
//        self.updateTeam(self.teamSegment!.selectedSegmentIndex)
        self.updateTeam(idx: 0)
        self.control.playHorn(true, team: self.team, isQuiet: self.singleton.hornQuiet)
    }
    
    @IBAction func changeTeam(sender: UISegmentedControl) {
        self.updateTeam(idx: sender.selectedSegmentIndex)
    }
    
    @IBAction func winHorn(sender: UIBarButtonItem) {
        self.control.playTrack("dirty", isQuiet: self.singleton.hornQuiet)
    }
    
    @IBAction func offHorn(sender: UIBarButtonItem) {
        self.control.stop()
    }
    
    func updateTeam(idx:Int) {
//        self.teamSegment!.selectedSegmentIndex = idx
        self.team = teams.getTeamByIndex(idx)
        self.singleton.teamIndex = idx
        
        self.hornButton!.setBackgroundImage(
            UIImage(named:self.team.shortname + "-button"),
            for: UIControl.State.Normal
        )
        self.view.backgroundColor = self.team.color
    }
    
//    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
//        dispatch_async(dispatch_get_main_queue()) {
//            self.updateTeam((message["team"] as? Int)!)
//            self.pressHornButton(self.hornButton)
//        }
//    }
    
    
    //////////////////////////////////////////////////////
    // Helper methods
    
//    override func preferredStatusBarStyle() -> UIStatusBarStyle {
//        return UIStatusBarStyle.LightContent
//    }
    
    @IBAction func unwindToView(segue:UIStoryboardSegue) {}
    
    override func loadView() {
        super.loadView()
//        self.teamSegment!.selectedSegmentIndex = self.singleton.teamIndex
//        self.updateTeam(self.teamSegment!.selectedSegmentIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        if (WCSession.isSupported()) {
//            session = WCSession.defaultSession()
//            session.delegate = self;
//            session.activateSession()
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

