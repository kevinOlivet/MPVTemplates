//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_featureName___AnalyticsLogic {
    func eventLoadVC()
    func eventLoadDataOK()
    func eventLoadDataError(_ serviceError: ServiceError )
}

class ___VARIABLE_featureName___Analytics: ___VARIABLE_featureName___AnalyticsLogic {
    
    // TODO: - Implement Analytics when ready, hopefully Protocol Oriented
//    var analyticsService: INXAnalyticsLogic = INXAnalytics()

    // TODO: - Implement Analytics when ready
    func eventLoadVC() {
        debugPrint("eventLoadVC called")
//        analyticsService.logEvent(eventName: "Dashboard", params: ["loadVC" : "OK"])
    }
    func eventLoadDataOK() {
        debugPrint("eventLoadDataOK called")
//        analyticsService.logEvent(eventName: "Dashboard", params: ["loadData" : "OK"])
    }
    func eventLoadDataError(_ serviceError: ServiceError ) {
        debugPrint("eventLoadDataError called")
//        let params = [
//            "loadData": "Error",
//            "responseCode": serviceError.responseCode,
//            "message": serviceError.message
//        ]
//
//        analyticsService.logEvent(eventName: "Dashboard", params: params)
//        analyticsService.isError(featureName: "Dashboard", serviceError: serviceError)
    }
    
}
