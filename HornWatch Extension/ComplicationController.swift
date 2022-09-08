//
//  Complication.swift
//  HornWatch Extension
//
//  Created by Chris Nandor on 2020.08.12.
//  Copyright © 2020 Pudge.Net. All rights reserved.
//

import Foundation
import ClockKit

class ComplicationController: NSObject, CLKComplicationDataSource {
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        
    }
    

    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // TODO: Finish implementing this required method.
    }
}
