//
//  URLSession.swift
//  Horn
//
//  Created by Chris Nandor on 2014.06.02.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import Foundation

var session = NSURLSession.sharedSession()

class URLSession:NSObject {
    var debug = false
    var test = false

    func makeRequest(baseURL:String, with:String) {
        if (self.debug) {
            NSLog("%@?%@", baseURL, with)
        }
        if (self.test) {
            return
        }

        var url = NSURL(string: "\(baseURL)?\(with)")
        var dataTask = session.dataTaskWithURL(url!)
        dataTask.resume()
    }
}