//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Transbank. All rights reserved.
//

import OPCommons
@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___AnalyticsLogicSpy: ___VARIABLE_sceneName___AnalyticsLogic {

    var eventLoadVCCalled = false
    var eventLoadDataOKCalled = false
    var eventLoadDataErrorCalled = false

    var eventLoadDataErrorSample: ServiceError?

    // MARK: - Methods
    func eventLoadVC() {
        eventLoadVCCalled = true
    }
    func eventLoadDataOK() {
        eventLoadDataOKCalled = true
    }
    func eventLoadDataError(_ serviceError: ServiceError) {
        eventLoadDataErrorCalled = true
        eventLoadDataErrorSample = serviceError
    }
}
