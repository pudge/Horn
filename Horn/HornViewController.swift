//
//  HornViewController.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.04.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import UIKit
import WatchConnectivity

@available(iOS 10.0, *)
class HornViewController: UIViewController, WCSessionDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    /** Called when all delegate callbacks for the previously selected watch has occurred. The session can be re-activated for the now selected watch using activateSession. */
    public func sessionDidDeactivate(_ session: WCSession) {
        
    }

    /** Called when the session can no longer be used to modify or add any new transfers and, all interactive messages will be cancelled, but delegate callbacks for background transfers can still occur. This will happen when the selected watch is being changed. */
    public func sessionDidBecomeInactive(_ session: WCSession) {
        
    }

    /** Called when the session has completed activation. If session state is WCSessionActivationStateNotActivated there will be an error with more details. */
    public func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }

    var session: WCSession!

    var singleton = HornSingleton()

    var control = Control()
    var teams = Teams()
    var team:Team = Team()
    var feedbackGenerator : UINotificationFeedbackGenerator? = nil
    var feedbackType = UINotificationFeedbackGenerator.FeedbackType(rawValue: 0)
    
    @IBOutlet weak var hornButton: UIButton!
    @IBOutlet weak var teamSegment: UISegmentedControl!
    @IBOutlet weak var teamPicker: UIPickerView!
    
    @IBAction func pressHornButton(_ sender: UIButton) {
        feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator?.prepare()

        self.updateTeam(self.teamSegment!.selectedSegmentIndex)
        self.control.playHorn(true, team: self.team, isQuiet: self.singleton.hornQuiet)

        feedbackGenerator?.notificationOccurred(feedbackType!)
        feedbackGenerator = nil
    }
    
    @IBAction func changeTeam(_ sender: UISegmentedControl) {
        self.updateTeam(sender.selectedSegmentIndex)
    }

    @IBAction func winHorn(_ sender: UIBarButtonItem) {
        self.control.playTrack("dirty", isQuiet: self.singleton.hornQuiet)
    }

    @IBAction func offHorn(_ sender: UIBarButtonItem) {
        self.control.stop()
    }

    func updateTeam(_ idx:Int) {
        self.teamSegment!.selectedSegmentIndex = idx
        self.team = self.teams.getTeamByIndex(idx)
        self.singleton.teamIndex = idx

        self.hornButton!.setBackgroundImage(
            UIImage(named:self.team.shortname + "-button"),
            for: UIControl.State()
        )
        self.view.backgroundColor = self.team.color
    }

    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            self.updateTeam((message["team"] as? Int)!)
            self.pressHornButton(self.hornButton)
        }
    }

    //////////////////////////////////////////////////////
    // Helper methods

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    @IBAction func unwindToView(_ segue:UIStoryboardSegue) {}

    override func loadView() {
        super.loadView()
        self.teamSegment!.selectedSegmentIndex = self.singleton.teamIndex
        self.updateTeam(self.teamSegment!.selectedSegmentIndex)
        self.teamSegment!.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        self.teamSegment!.setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.teamPicker.delegate = self
        self.teamPicker.dataSource = self

        // Do any additional setup after loading the view, typically from a nib.
        if (WCSession.isSupported()) {
            session = WCSession.default
            session.delegate = self;
            session.activate()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.teams.getTeamCount()
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.teams.getTeamByIndex(row).name
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.updateTeam(row)
    }

}

