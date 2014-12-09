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
    @IBAction func toggleQuietSwitch(sender: UISwitch) {
        self.singleton.hornQuiet = self.quietSwitch!.on
    }

    override func loadView() {
        super.loadView()
        self.quietSwitch!.setOn(self.singleton.hornQuiet, animated: false)
    }

}
