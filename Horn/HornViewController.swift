//
//  HornViewController.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.04.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import UIKit

class HornViewController: UIViewController {
    var singleton = HornSingleton()

    var control = Control()
    var teams = Teams()
    var team:Team = Team()

    @IBOutlet weak var hornButton: UIButton!
    @IBOutlet weak var teamSegment: UISegmentedControl!
    
    @IBAction func pressHornButton(sender: UIButton) {
        self.updateTeam(self.teamSegment!.selectedSegmentIndex)
        self.control.playHorn(true, withTeam: self.team.shortname, isQuiet: self.singleton.hornQuiet)
    }

    @IBAction func changeTeam(sender: UISegmentedControl) {
        self.updateTeam(sender.selectedSegmentIndex)
    }
    
    @IBAction func winHorn(sender: UIBarButtonItem) {
        self.control.playTrack("dirty", isQuiet: self.singleton.hornQuiet)
    }

    @IBAction func offHorn(sender: UIBarButtonItem) {
        self.control.stop()
    }

    func updateTeam(idx:Int) {
        self.team = teams.getTeamByIndex(idx)
        self.singleton.teamIndex = idx
        
        self.hornButton!.setBackgroundImage(
            UIImage(named:self.team.shortname + "-button"),
            forState: UIControlState.Normal
        )
        self.view.backgroundColor = self.team.color
    }

    //////////////////////////////////////////////////////
    // Helper methods

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBAction func unwindToView(segue:UIStoryboardSegue) {}

    override func loadView() {
        super.loadView()
        self.teamSegment!.selectedSegmentIndex = self.singleton.teamIndex
        self.updateTeam(self.teamSegment!.selectedSegmentIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

