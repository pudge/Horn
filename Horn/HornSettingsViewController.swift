//
//  HornSettingsViewController.swift
//  Horn
//
//  Created by Chris Nandor on 2014.11.17.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import UIKit

class HornSettingsViewController:UIViewController {
    var singleton = HornSingleton()

    @IBOutlet weak var quietSwitch: UISwitch!
    @IBOutlet weak var localSwitch: UISwitch!
    @IBOutlet weak var globalSwitch: UISwitch!

    @IBAction func toggleQuietSwitch(_ sender: UISwitch) {
        self.singleton.hornQuiet = self.quietSwitch!.isOn
    }
    
    @IBAction func toggleLocalSwitch(_ sender: UISwitch) {
        self.singleton.hornLocal = self.localSwitch!.isOn
    }
    
    @IBAction func toggleGlobalSwitch(_ sender: UISwitch) {
        self.singleton.hornGlobal = self.globalSwitch!.isOn
    }
    
    override func loadView() {
        super.loadView()
        self.quietSwitch!.setOn(self.singleton.hornQuiet, animated: false)
        self.localSwitch!.setOn(self.singleton.hornLocal, animated: false)
        self.globalSwitch!.setOn(self.singleton.hornGlobal, animated: false)
    }

}
