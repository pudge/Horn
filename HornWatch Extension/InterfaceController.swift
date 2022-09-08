//
//  InterfaceController.swift
//  HornWatch Extension
//
//  Created by Chris Nandor on 2016.06.20.
//  Copyright © 2016 Pudge.Net. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity


class InterfaceController: WKInterfaceController, WCSessionDelegate {
    /** Called when the session has completed activation. If session state is WCSessionActivationStateNotActivated there will be an error with more details. */
    @available(watchOS 2.2, *)
    public func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }

    var session : WCSession!

    @IBAction func pressHornWatch() {
        WKInterfaceDevice.current().play(.click)
        session.sendMessage(["team":self.pageIndex()], replyHandler: nil, errorHandler: nil)
    }

    func pageIndex()->Int { return 0 }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

        if (WCSession.isSupported()) {
            session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
