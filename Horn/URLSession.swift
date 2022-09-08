//
//  URLSession.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation

var session = Foundation.URLSession.shared

class URLSession:NSObject {
    var debug = false
    var test = false
    var dataTask = URLSessionDataTask()

    func makeRequest(_ baseURL:String, with:String) {
        if (self.debug) {
            NSLog("%@?%@", baseURL, with)
        }
        if (self.test) {
            return
        }

        let url = URL(string: "\(baseURL)?\(with)")
        self.dataTask = session.dataTask(with: url!)//, completionHandler: myHandler)
        //(with: url!)
        self.dataTask.resume()
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:  #selector(URLSession.cancelData), userInfo: nil, repeats: false)
    }

    @objc func cancelData() {
        if (self.debug) {
            NSLog("canceling task")
        }
        self.dataTask.cancel()
    }
}

func myHandler() -> Void {
    NSLog("foo")
}
