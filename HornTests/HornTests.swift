//
//  HornTests.swift
//  HornTests
//
//  Created by Chris Nandor on 2014.11.10.
//  Copyright (c) 2014 Pudge.Net. All rights reserved.
//

import UIKit
import XCTest

class HornTests: XCTestCase {
    var singleton:HornSingleton?

    override func setUp() {
        super.setUp()
        singleton = HornSingleton()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
