//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___AnalyticsLogicSpy: ___VARIABLE_sceneName___AnalyticsLogic {

    var tagScreenCalled = false
    var tagEventCalled = false

    var tagScreenSample: (screenName: ___VARIABLE_sceneName___Analytics.Screen, screenClass: String)?
    var tagEventSample: ___VARIABLE_sceneName___Analytics.Event?

    // MARK: - Methods
    func tagScreen(screenName: ___VARIABLE_sceneName___Analytics.Screen, screenClass: String) {
        tagScreenCalled = true
        tagScreenSample = (screenName, screenClass)
    }
    func tagEvent(event: ___VARIABLE_sceneName___Analytics.Event) {
        tagEventCalled = true
        tagEventSample = event
    }

}
