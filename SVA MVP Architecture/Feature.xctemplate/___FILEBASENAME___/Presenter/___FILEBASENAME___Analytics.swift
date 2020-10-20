//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import OPCommons
import Foundation

protocol ___VARIABLE_featureName___AnalyticsLogic {
    func eventLoadVC()
    func eventLoadDataOK()
    func eventLoadDataError(_ serviceError: ServiceError )
}

final class ___VARIABLE_featureName___Analytics: ___VARIABLE_featureName___AnalyticsLogic {
    
    var analyticsService: OPAnalyticsProtocol = OPAnalytics.shared

    func eventLoadVC() {
        analyticsService.logEvent(eventName: "___VARIABLE_featureName___", parameters: ["loadVC" : "OK"])
    }
    func eventLoadDataOK() {
        analyticsService.logEvent(eventName: "___VARIABLE_featureName___", parameters:["loadData": "OK"])
    }
    func eventLoadDataError(_ serviceError: ServiceError ) {
        let parameters = [
            NSLocalizedDescriptionKey: NSLocalizedString("The request failed.", comment: ""),
            NSLocalizedFailureReasonErrorKey: NSLocalizedString("The response returned a 404.", comment: ""),
            NSLocalizedRecoverySuggestionErrorKey: NSLocalizedString("Does this page exist?", comment: ""),
            "ProductID": "123456",
            "View": "___VARIABLE_featureName___"
        ]
        
        analyticsService.logEvent(eventName: "___VARIABLE_featureName___", parameters: parameters)
        analyticsService.registerError(code: -1001, parameters: parameters)
    }
    
}
